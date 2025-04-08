asdas

### Lecture: Better Automated UI Test Case Prioritization (TERMINATOR)

Reference: [https://arxiv.org/pdf/1905.07019](https://arxiv.org/pdf/1905.07019)

---

#### Section 1: Motivation 

* **The Challenge of Modern UI Testing:**
    * Automated User Interface (UI) testing is essential in Continuous Integration (CI)[cite: 665].
    * Modern UIs are complex, often combining many microservices from different teams[cite: 666, 691].
        * Example: A single click can invoke dozens of components[cite: 705, 706].
    * Failure in one underlying microservice can cause UI test failure, making tests brittle and hard to debug[cite: 667, 707].

    * **[Image: Figure 1 from paper showing microservice complexity]** [cite: 705]

* **Why Prioritization is Needed:**
    * Automated UI test suites are often *slow*. Example: LexisNexis suite took 3-5 hours (cloud) to 30 hours (local)[cite: 669, 686].
    * This slow feedback loop hinders CI and developer agility[cite: 669, 687, 689]. Developers wait hours for feedback.
    * Much UI testing is "black box"; source code coverage is often unavailable or impractical to obtain due to the distributed nature[cite: 670, 694, 699].
    * **Goal:** Find failures *earlier* to give faster feedback, using only available "black box" information (test descriptions, execution history)[cite: 669, 670, 697, 712]. This is Test Case Prioritization (TCP).

---

#### Section 2: Background Concepts 

* **Automated UI Testing:**
    * Simulates user interactions (clicks, input) on the GUI[cite: 743].
    * Often uses frameworks where tests are described in high-level languages (e.g., Gherkin) mapped to code actions[cite: 748].

    * **[Image: Figure 2 from paper showing UI test, description, code]** [cite: 746]

* **Test Case Prioritization (TCP):**
    * Reordering test case execution to maximize some objective, typically finding faults/failures faster[cite: 697, 750].
    * Standard Metric: APFD (Average Percentage of Faults Detected)[cite: 756]. Or cost-aware APFDc[cite: 761, 764]. This paper focuses on *failure* detection using APFDc[cite: 768, 769].
    * *Reference:* [44] G. Rothermel et al., "Prioritizing test cases for regression testing," IEEE Transactions on Software Engineering, 2001.
    * *Reference:* [15] S. Elbaum et al., "Incorporating varying test costs and fault severities into test case prioritization," ICSE, 2001.

* **Black-Box TCP Information Sources:**
    * History: Past fail/pass rates, time since last failure[cite: 771, 772].
    * Cost: Execution time[cite: 773].
    * Test Descriptions: Using NLP techniques[cite: 775].
    * Feedback: Dynamically reordering based on results in the *current* run[cite: 778].

* **Total Recall Problem:**
    * An information retrieval task: find (nearly) all relevant items ("positives") in a large set with minimum cost (inspection effort)[cite: 713, 786, 787].
    * Analogy here: Find all *failing* test cases (positives) by *running* as few tests as possible (cost).

* **Active Learning:**
    * Machine learning where the algorithm interactively queries a user (or oracle) to label data points[cite: 716, 792].
    * Often effective when data is abundant but labels are expensive (like running tests)[cite: 792].
    * Common Strategies:
        * *Uncertainty Sampling:* Query points the model is least certain about (near decision boundary)[cite: 796].
        * *Certainty Sampling:* Query points the model is most certain are positive[cite: 794].

    * **[Image: Figure 3 from paper showing SVM separating hyperplane]** [cite: 791]

    * *Reference:* [46] B. Settles, "Active learning," Synthesis Lectures on Artificial Intelligence and Machine Learning, 2012.

---

#### Section 3: Technical Details - TERMINATOR 

* **Core Idea:** Treat automated UI TCP as a Total Recall problem solved using Active Learning[cite: 713, 785, 957].
* **Model:** Support Vector Machine (SVM), linear kernel, weighted classes (to handle imbalance)[cite: 715, 810].
* **Features (Black-Box Only):**
    * Text Features: From test descriptions (tokenization, TF matrix, L2-norm)[cite: 801, 802].
    * History Features: From past run results (pass/fail/skip)[cite: 803].
    * Hybrid Features: Combined text and history[cite: 804].
* **Algorithm Overview (Algorithm 1):**
    1.  Start with an empty set of executed/failed tests (`L`, `LR`).
        * L= tests already executre
        * LR= test cases that have already failed
    2.  While tests remain:
        * Select a batch (`N1=10`) of tests to run next using a query strategy.
        * Execute the selected batch.
        * Update `L` and `LR` with results.
        * If any failures found (`|LR| > 0`):
            * Potentially add "presumed negatives" for balance[cite: 808].
            * Train/update the SVM model[cite: 810].
            * Use aggressive undersampling if many failures found[cite: 811].
              - Load balacing: keep all failed cases and an equal number of not-yet-run samples
        * Else (no failures found yet): Use random sampling[cite: 809].
    3.  Query Strategy adapts based on number of failures found (`N2=30` threshold)[cite: 806, 807]:
        * If `|LR| < N2`: Use **Uncertainty Sampling** (pick tests nearest the SVM boundary)[cite: 890].
        * If `|LR| >= N2`: Use **Certainty Sampling** (pick tests most confidently predicted as failures)[cite: 894].
* **Evaluation:** Tested on LexisNexis data (54 runs, 2661 tests), comparing 3 TERMINATOR variants (text, history, hybrid features) against 14 other black-box methods + baselines using APFDc[cite: 823, 828, 896].

---

#### Section 4: Surprising Messages / Results 

* **TERMINATOR Wins:** The hybrid feature version (F3) significantly outperformed all other 14 techniques in finding failures early (APFDc)[cite: 925, 932].
    * It achieved ~75% of the theoretical optimal performance (A2)[cite: 933].

    * **[Image: Figure 4 from paper showing failure detection curve]** [cite: 937]
        * Example: F3 found 60% of failures when only 20% of test time elapsed, versus ~30% for the next best methods[cite: 930].

* **Simpler is Sometimes Better (but not best):** Simple history-based methods (like fail rate, recency) performed better than several more complex methods that used test descriptions or non-active feedback[cite: 927, 928].
* **Active Learning Matters:** The dynamic adaptation based on feedback via active learning (Uncertainty/Certainty sampling) seems key to TERMINATOR's success over static or simpler feedback methods[cite: 718, 942].
* **Low Overhead:** Despite the dynamic re-prioritization and model updates, TERMINATOR's computational overhead was negligible (~0.33% of total test suite time), making it practical[cite: 939, 941].

---

#### Section 5: Take Home Message 

* **Problem:** Prioritizing long-running, black-box automated UI tests is critical for efficient CI/CD but challenging[cite: 953, 959].
* **Solution:** Framing TCP as a **Total Recall** problem and applying **Active Learning** (like TERMINATOR) is highly effective[cite: 957, 964].
* **Why it Works:** It leverages readily available black-box data (history, descriptions) combined with intelligent feedback loops (uncertainty/certainty sampling) to dynamically focus testing effort where failures are likely or where the model needs refinement[cite: 715, 958].
* **Impact:** Offers significantly faster failure detection compared to prior black-box approaches with minimal computational cost, enabling faster developer feedback and potentially shorter release cycles[cite: 717, 932, 941, 947].
* **Broader Potential:** The Total Recall / Active Learning approach might be useful for other SE tasks involving costly search/labeling, like defect localization, vulnerability detection, or literature screening[cite: 965].

---
,
#### References (Key Published Works Cited)

1.  [44] G. Rothermel, R. H. Untch, C. Chu, and M. J. Harrold. **"Prioritizing test cases for regression testing."** *IEEE Transactions on Software Engineering* 27, no. 10 (2001): 929-948. [cite: 949]
2.  [15] S. Elbaum, A. Malishevsky, and G. Rothermel. **"Incorporating varying test costs and fault severities into test case prioritization."** In *Proceedings of the 23rd International Conference on Software Engineering (ICSE)*, 2001, pp. 329-338. [cite: 993]
3.  [46] B. Settles. **"Active learning."** *Synthesis Lectures on Artificial Intelligence and Machine Learning* 6, no. 1 (2012): 1-114. [cite: 1052]
4.  [27] J. M. Kim and A. Porter. **"A history-based test prioritization technique for regression testing in resource constrained environments."** In *Proceedings of the 24th International Conference on Software Engineering (ICSE)*, 2002, pp. 119-129. [cite: 1016]
5.  [9, 10] G. V. Cormack and M. R. Grossman. Papers on Active Learning for High-Recall Text Classification, e.g., **"Scalability of Continuous Active Learning for Reliable High-Recall Text Classification."** In *Proceedings of the 25th ACM International on Conference on Information and Knowledge Management (CIKM)*, 2016, pp. 1039-1048. [cite: 984, 986] (Context for the Total Recall methodology).


## Lecture: The Surprising Link Between Issues, Bugs, and Enhancements

Reference: [https://arxiv.org/pdf/1710.08736](https://arxiv.org/pdf/1710.08736)

---

### Section 1: Motivation

* **The Agile/Multi-Project Challenge:**
    * Modern software development, especially in agile environments and large service organizations, often requires developers to work on *multiple* projects concurrently[cite: 1071, 1088].
    * Constantly switching contexts between projects is inefficient and costly[cite: 1358, 1360].
        * **[Image: Figure 10 showing Context Switching Costs]**
    * Managers need to proactively manage staffing and workload to minimize this disruption[cite: 1072, 1089, 1090, 1361, 1362].
* **The Problem with Predicting Workload (Bugs/Enhancements):**
    * Traditional defect prediction often relies on historical *bug* data[cite: 1114].
    * Getting reliable historical bug data requires significant *manual effort* to curate raw "issue" logs (e.g., classifying reports in Bugzilla/GitHub Issues)[cite: 1116, 1117]. The authors spent months doing this for proprietary data[cite: 1117].
    * Building and maintaining defect predictors across many different programming languages and tools used in large organizations is complex and resource-intensive[cite: 1113, 1119, 1120, 1123].
* **A Simpler Idea:** Can we leverage easily obtainable data, like the *total count of reported issues over time*, to forecast future workload like bugs and enhancements?[cite: 1075, 1118, 1125, 1126]. This requires understanding the connection between these elements[cite: 1070].

---

### Section 2: Background Concepts

* **Issue Tracking Systems:**
    * Repositories (e.g., GitHub Issues, Jira, Bugzilla) where stakeholders report problems, suggest improvements, ask questions, etc.[cite: 1298, 1382].
    * An "issue" is a raw entry; it might represent a bug, a feature request (enhancement), a question, documentation error, etc.[cite: 1116, 1117].
* **Time Series Analysis:**
    * Analyzing sequences of data points collected over time[cite: 1163, 1227].
    * Used in SE to model software evolution, reliability growth, effort estimation, etc.[cite: 1160, 1169].
* **ARIMA (AutoRegressive Integrated Moving Average):**
    * A standard, powerful statistical method for analyzing and forecasting time series data[cite: 1095, 1180, 1227]. Widely used in previous SE reliability/evolution studies[cite: 1182].
    * **AR (AutoRegressive):** Assumes the current value depends linearly on its own previous values.
    * **MA (Moving Average):** Assumes the current value depends linearly on previous random error terms.
    * **I (Integrated):** Uses differencing to make a non-stationary time series (one whose mean/variance changes over time) stationary before applying ARMA[cite: 1228, 1230, 1233].
    * Model is specified as ARIMA(p, d, q)[cite: 1234].
    * Requires checking data properties (stationarity via Dickey-Fuller test, autocorrelation plots for parameter 'p') and potentially transforming data (e.g., differencing, power transforms for normality)[cite: 1237, 1246, 1248, 1250].
        * **[Image: Figure 4 showing an Autocorrelation plot]**

---

### Section 3: Technical Details (Methodology)

* **Study Scope:** Analyzed 832 software projects (661 open-source from GitHub, 171 proprietary from IBM)[cite: 1073, 1194, 1224].
* **Data Collection:**
    * Mined weekly counts of `issues`, `bugs`, and `enhancements` for each project over an average of ~2 years[cite: 1093, 1094].
    * Proprietary bug/enhancement data required manual curation from issue logs[cite: 1117].
    * Applied filters to ensure projects represented active software development (e.g., sufficient duration, commits, issues, collaborators) [cite: 1211, 1213, 1216-1222].
* **Modeling Approach:**
    * Used ARIMA to model the time series of weekly counts for each attribute[cite: 1095, 1130].
    * Employed a **rolling window forecast**:
        * Train ARIMA on data from the past 20 weeks (~4 months).
        * Forecast the counts for the next 4 weeks (~1 month).
        * Slide the window forward by 1 week and repeat.
        * **[Image: Figure 5 illustrating the Rolling Window approach]**
* **Evaluation Metric:** Mean Absolute Error (MAE) used to measure forecast accuracy[cite: 1256, 1257]. Preferred for clear interpretation and handling zero-values[cite: 1266, 1270].
* **Core Questions Explored:**
    1.  Do `issues`, `bugs`, `enhancements` show predictable temporal trends individually? (ARIMA on `bugs` to predict `bugs`, etc.) [cite: 1128]
    2.  Are the time series trends of these attributes correlated? (Spearman's ρ) [cite: 1136]
    3.  Can `issue` trends forecast `bug` and `enhancement` trends? (ARIMA on `issues` to predict `bugs`/`enhancements`) [cite: 1143]
    4.  How does the accuracy of issue-based forecasting compare to using the specific attribute's history? (Compare MAE using Welch's t-test) [cite: 1149]

---

### Section 4: Surprising Messages / Results

1.  **Temporal Trends Exist (RQ1):** Yes. Past trends in issue counts, bug counts, and enhancement counts *can* be accurately modeled using ARIMA to predict future counts of the *same* attribute. MAE was generally low[cite: 1132, 1281, 1287].
    * **[Image: Figure 6 showing low MAE for individual attribute forecasts]**

2.  **Correlation Exists (RQ2):** Yes. The number of reported issues over time shows a moderate positive correlation with both the number of reported bugs and the number of enhancement requests over time[cite: 1140, 1304, 1327].
    * Correlations were stronger in proprietary projects than in open-source projects[cite: 1141, 1306].
    * **[Image: Figure 7 showing correlation heatmaps]**

3.  **Issues Can Forecast Bugs & Enhancements (RQ3):** Yes. Surprisingly, an ARIMA model trained *only* on the time series of total issue counts can produce accurate forecasts for the future number of *bugs* and *enhancements*[cite: 1147, 1319]. MAE remained low[cite: 1316].
    * **[Image: Figure 8 showing low MAE for issue-based forecasts of bugs/enhancements]**

4.  **Issue-Based Forecast is Just as Good (RQ4):** Yes. The accuracy (MAE) of forecasting bugs using *only issue history* was statistically *similar* to forecasting bugs using *bug history*. The same held true for enhancements[cite: 1157, 1335, 1338].
    * **[Image: Figure 9 comparing MAE distributions]**

---

### Section 5: Take Home Message

* **The Key Finding:** You don't necessarily need detailed, curated historical bug or enhancement data to forecast future workload. The readily available trend of *total reported issues* is a powerful predictor[cite: 1077, 1097, 1100, 1338].
* **Practical Implication:** Managers can use simple time series forecasting (like ARIMA) on easily collected issue counts to anticipate upcoming bug and enhancement activity with accuracy comparable to more complex methods[cite: 1076, 1340, 1372].
* **Benefit:** This dramatically reduces the effort needed for prediction – bypassing laborious issue curation and the need for complex, multi-language defect predictors[cite: 1100, 1341, 1342, 1372].
* **Recommendation:** This approach is highly recommended for practical workload forecasting and resource planning, especially in dynamic, multi-project environments common in agile development and service organizations[cite: 1077, 1364, 1366, 1375].

---

### References (Key Published Works Cited)

1.  [8] G. E. P. Box, G. M. Jenkins, G. C. Reinsel, and G. M. Ljung. **Time series analysis: forecasting and control.** John Wiley & Sons, 2015. (The foundational text for ARIMA).
2.  [2] A. Amin, L. Grunske, and A. Colman. **"An approach to software reliability prediction based on time series modeling."** *Journal of Systems and Software* 86, no. 7 (2013): 1923-1932. (Example of Time Series/ARIMA in SE Reliability).
3.  [3] K. Ayari, P. Meshkinfam, G. Antoniol, and M. Di Penta. **"Threats on building models from cvs and bugzilla repositories: the mozilla case study."** In *Proceedings of the 2007 conference of the center for advanced studies on Collaborative research (CASCON)*, 2007, pp. 215-228. (Cited for prior work on issue/bug links).
4.  [37] T. Menzies, J. Greenwald, and A. Frank. **"Data mining static code attributes to learn defect predictors."** *IEEE Transactions on Software Engineering* 33, no. 1 (2007): 2-13. (Example of traditional defect prediction).
5.  [50] G. M. Weinberg. **Quality software management (Vol. 1): systems thinking.** Dorset House, 1992. (Source for context switching costs).
6.  [33] M. M. Lehman and L. A. Belady. **Program evolution: processes of software change.** Academic Press, 1985. (Classic work on software evolution).


## Lecture: Formally Verified Cloud-Scale Authorization (AWS AuthV2)

Reference: https://assets.amazon.science/bb/40/22ac44f84f6d8eb625ac9666a00f/formally-verified-cloud-scale-authorization.pdf

---

### Section 1: Motivation

* **The Problem:** Evolving critical, large-scale infrastructure like cloud authorization systems is risky.
    * AWS's authorization engine handles over 1 billion requests/second. Changes must *not* break existing behavior (backward compatibility) or introduce security vulnerabilities.
    * Traditional methods (testing, reviews) provide assurance but weren't enough to allow rapid evolution with high confidence at this scale.
* **The Goal:** Leverage **Formal Verification** to:
    * Achieve higher assurance of correctness against a precise specification.
    * Gain better understanding through the formal specification itself.
    * Increase development agility: Confidently deploy optimizations and new features, knowing they behave as intended and preserve compatibility.

---

### Section 2: Background Concepts

* **Cloud Authorization:** Controls user access to resources (like storage, compute) based on customer-defined policies (rules specifying Allow/Deny). The engine evaluates requests against these policies.
* **Formal Verification:** Using mathematical methods to prove that a system's implementation adheres to a formal (mathematically precise) specification.
* **Verification-Aware Languages:** Programming languages designed to make formal verification easier, often including ways to write specifications directly in the code and tools (verifiers) to automatically or semi-automatically check proofs.
* **Dafny:** The verification-aware language used in this project.
    * Features specifications like pre-/post-conditions and loop invariants.
    * Uses an automated verifier, leveraging SMT solvers, to check code against specs.
    * Can compile verified code to target languages like Java.
    * *Reference:* [20] K. R. M. Leino. "Dafny: An automatic program verifier for functional correctness." LPAR, 2010. (And subsequent works/documentation).
* **SMT Solvers:** Automated tools that check the satisfiability of logical formulas, used by verifiers like Dafny to discharge proof obligations.
* **Differential Testing:** Running two system versions (e.g., old vs. new) with the same inputs and comparing outputs to detect behavioral differences.
* **Shadow Testing:** Deploying a new system version alongside the live production system. It receives the same production traffic but its responses aren't used (or are only logged). Allows comparison of behavior and performance under real load without user impact.
    * *Reference:* [64, 65] Examples: S. Satyal et al., OTM Conferences, 2018; G. Schermann et al., IEEE Software, 2018.

---

### Section 3: Technical Details (AuthV2 Development Process)

* **The Challenge:** AWS wanted to evolve its mature, large-scale Java-based authorization engine (AuthV1) using formal methods.
* **Approach:** A 4-year effort involving a multi-phase rewrite and verification process:
    1.  **Formal Specification:** Reverse-engineered a formal, *executable* specification of AuthV1's behavior in Dafny (`AuthV2_dafny_spec`). Validated early via differential testing against AuthV1. Proved key properties (lemmas) about the specification itself.
    2.  **Verified Implementation:** Wrote a *new*, efficient implementation in Dafny (`AuthV2_dafny_impl`), proved correct against the specification.
        * Modeled necessary Java library components (collections, strings, etc.) within Dafny to allow the verified code to interact with the Java ecosystem.
            * **[Image: Listing 2 showing Dafny model of Java List/ArrayList]**
        * Managed "proof brittleness" (proofs breaking on minor changes) via infrastructure and careful proof engineering. Code size ratio (proof+spec : implementation) was 5:1.
            * **[Image: Table 1 showing code size breakdown]**
    3.  **Idiomatic Compilation:** Developed a *custom compiler* (`DafnyLite`) to translate the verified Dafny implementation (`AuthV2_dafny_impl`) into *readable, performant, idiomatic* Java code (`AuthV2_java`). Standard Dafny compiler output was insufficient for operational needs (debugging, reviews, performance).
        * **[Image: Figure 1 showing Dafny to idiomatic Java example]**
        * **[Image: Figure 2 comparing standard vs. idiomatic compiler output]**
    4.  **Extensive Validation:** Deployed `AuthV2_java` in shadow mode alongside AuthV1.
        * Compared behavior on live production traffic, eventually processing $10^{15}$ requests with no discrepancies in the final version.
        * This step was crucial for catching subtle specification errors missed by earlier testing and proofs (found 7).
        * Used production profiling data to guide performance optimizations in the Dafny code (which were then re-verified).
* **Key Decision:** Rewriting in Dafny was deemed more feasible than directly verifying the complex legacy Java codebase of AuthV1.

---

### Section 4: Surprising Messages / Key Results

* **Rewrite Beats Verify-Legacy:** For complex, high-scale legacy systems, rewriting in a verification-aware language (like Dafny) and compiling back can be a more practical path to formal verification than trying to verify the existing code directly.
* **Idiomatic Compilation is Critical:** For verified code to be accepted and maintainable in a production environment, generating readable, debuggable, and performant target code is essential. A custom compiler was needed here.
* **Verification Needs Massive Testing:** Formal proof connects implementation to spec, but ensuring the *spec* correctly captures the *intended* (legacy) behavior requires extensive validation, like the massive-scale shadow testing ($10^{15}$ samples) used here. Testing finds spec bugs; proof finds implementation bugs.
* **Performance Gains:** The formally verified rewrite (AuthV2) was 3x faster than the original system (AuthV1), demonstrating that verification doesn't necessarily mean sacrificing performance.
    * **[Image: Figure 3 showing performance improvement histograms]**
* **Agility Delivered:** The formally verified foundation allows AWS to now make changes and add features to the authorization engine more rapidly and confidently.

---

### Section 5: Take Home Message

* Formal verification *is* practical for improving the assurance and evolution of critical, large-scale, legacy software systems.
* Success hinges on a combination of:
    * Choosing appropriate verification-aware tools/languages (like Dafny).
    * Bridging the gap to production reality with techniques like idiomatic compilation.
    * Rigorous validation (like differential and shadow testing) to ensure the specification itself is correct relative to requirements/legacy behavior.
* The benefits include not only high correctness assurance but also better system understanding and increased agility for future development.

---

### References (Key Published Works Cited)

1.  [20] K. R. M. Leino. **"Dafny: An automatic program verifier for functional correctness."** *Logic for Programming, Artificial Intelligence, and Reasoning (LPAR)*, 2010, pp. 348-370.
2.  [49] X. Leroy et al. **"CompCert - a formally verified optimizing compiler."** *ERTS 2016: Embedded Real Time Software and Systems*, 2016. (Example of a major verified system).
3.  [60] J. Protzenko et al. **"EverCrypt: A fast, verified, cross-platform cryptographic provider."** *IEEE Symposium on Security and Privacy (SP)*, 2020, pp. 983-1002. (Example using F* and verified compilation).
4.  [37] G. Heiser, G. Klein, and J. Andronick. **"seL4 in Australia: From research to real-world trustworthy systems."** *Communications of the ACM* 63, no. 4 (2020): 72-75. (Example of verifying a complex system - OS Kernel).
5.  [32] The F* Development Team / GitHub. **"Fstarlang/karamel: KaRaMeL is a tool for extracting low-level F* programs to readable C code."** (Tool for idiomatic C generation from verified F* subset).
6.  [17, 1] Verification tools for Java: **OpenJML** (D. R. Cok et al.) and **KeY** (W. Ahrendt et al., *The KeY Book*, Springer 2016). (Context for alternative approaches).
7.  [64, 65] Papers on **Shadow Testing** (e.g., S. Satyal et al., OTM Conferences, 2018; G. Schermann et al., IEEE Software, 2018).



## Lecture: Delta Debugging - Simplifying Failure-Inducing Inputs

Reference: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10859156

---

### Section 1: Motivation

* **The Core Problem:** When a program fails on a specific input, how do you pinpoint *what part* of the input actually caused the failure? [cite: 5]
* **Why Minimize?** Finding a *minimal* failure-inducing input is crucial for effective debugging:
    * Easier to understand and analyze[cite: 9].
    * Leads to shorter executions, narrowing the search space for the bug[cite: 10].
    * Easier to communicate in bug reports and identify duplicates[cite: 11].
* **Manual Approach Limitations:** Programmers traditionally reduce inputs manually (delete parts, re-run, undo if failure disappears)[cite: 12, 13, 14].
    * This is *tedious*, slow, and error-prone[cite: 16, 20].
    * Risk of removing too much (losing the failure) or too little (slow progress)[cite: 21, 22, 23].
* **The Need:** An *automated*, *general* technique to simplify arbitrary inputs (code, config files, data, etc.) to a minimal failing version[cite: 2, 8, 25].

---

### Section 2: Background Concepts

* **Failure-Inducing Input:** Any program input that triggers an undesired behavior (crash, wrong output, hang, etc.)[cite: 2].
* **Input Reduction:** The process of taking a large failure-inducing input and systematically removing parts to find a smaller (ideally minimal) input that still triggers the *same* failure[cite: 8].
* **Delta Debugging (DD) Origins:**
    * Interestingly, DD didn't start with inputs. It began as a way to find failure-inducing *code changes* between program versions[cite: 27, 57].
    * Core question: "Yesterday, my program worked. Today, it does not. Why?"[cite: 59].
    * Inspired by software versioning (baseline + deltas/changes) [cite: 28, 30] and practical debugging tools (like the DDD debugger Zeller co-created)[cite: 35].
    * Later generalized to work on any set of "changes," including the characters or components of an input[cite: 27, 65, 66].

---

### Section 3: Technical Details - Delta Debugging

* **Core Idea:** Apply divide-and-conquer to a set of "deltas" (changes relative to a baseline) to isolate a minimal subset that causes failure[cite: 44, 53]. For input minimization:
    * Baseline = empty input (assumed PASS)[cite: 68].
    * Deltas = individual characters or units of the original failing input[cite: 68].
    * Full input = baseline + all deltas (known FAIL)[cite: 69].
* **The `ddmin` Algorithm (Input Minimization):**
    * Systematically tries removing subsets of the input deltas[cite: 50].
    * Starts with large subsets (e.g., halves). If removing a subset still results in FAIL, keep the smaller input[cite: 50].
    * If removing either half results in PASS or UNRESOLVED, reduce the granularity – try removing smaller subsets (quarters, eighths, etc.)[cite: 51, 52].
    * Goal: Find a **1-minimal** input – removing any *single* remaining delta makes the failure disappear[cite: 55, 70]. This makes the problem tractable (avoids NP-completeness)[cite: 48, 54, 56].
    * Can be implemented very concisely.
        * **[Image: Figure 1 showing ddmin Python code]**
* **The Oracle Problem:** A critical component is the `test` function (the "oracle").
    * It must reliably determine if a given input subset causes the *specific failure of interest* (`FAIL`), works correctly (`PASS`), or causes some *other* problem (`UNRESOLVED`, e.g., a syntax error because the subset is invalid)[cite: 90, 91, 93].
    * Returning `UNRESOLVED` correctly is vital; it tells `ddmin` to try smaller changes[cite: 93].
    * Techniques for differentiating failures: check program exit codes, compare stack traces, compare exception messages[cite: 94, 97, 98, 99].
        * **[Image: Figure 2 showing example test function code]**
* **Case Study Highlight: SQL Server Crash (Section III of paper):**
    * **Scenario:** Testers at a large company (implied: Microsoft Redmond) found crashes in an SQL server using complex, automatically generated SQL queries[cite: 73, 74].
    * **Challenge:** The SQL server development team dismissed these bugs, claiming the complex inputs were unrealistic and demanding simple, reproducible cases[cite: 75].
    * **DD Application:** The testers obtained Zeller's early Python `ddmin` implementation[cite: 76, 77, 84].
    * **Result:** In a very short time ("overnight"), they applied Delta Debugging to reduce the complex, crashing SQL queries into minimal failing inputs – often just **one-line queries**[cite: 85, 86].
    * **Impact:** When presented with simple queries that crashed the server, the development team could no longer ignore the bugs ("panicking")[cite: 87]. This powerfully demonstrated DD's ability to make complex failures concrete and understandable[cite: 89].

---

### Section 4: Surprising Messages / Impact

* **Simplicity and Power:** Delta Debugging is based on a relatively simple algorithm but provides a powerful, automated way to simplify complex failure scenarios[cite: 60, 61, 89]. The SQL case study exemplifies this practical power[cite: 87, 89].
* **Broad Applicability:** The "difference minimization" concept extends far beyond program inputs. DD has been applied to:
    * Isolating failure-inducing thread schedules in concurrent programs[cite: 102].
    * Finding minimal differences in program states (cause-effect chains)[cite: 105, 108].
    * Reducing patches in automated program repair (e.g., GenProg)[cite: 113, 114].
* **The Crucial Oracle:** The reliability of the test oracle (distinguishing the target failure from others) is paramount for DD's success[cite: 90, 96, 100]. Comparing stack traces or exceptions was a key insight here[cite: 97, 100].
* **Syntax/Semantics Awareness:** Basic DD treats input as a flat sequence, which can be inefficient for structured data (like source code) as many subsets are syntactically invalid[cite: 116, 117]. This spurred research into refinements:
    * Hierarchical Delta Debugging (HDD) operating on tree structures[cite: 118, 119].
    * Language-specific reducers (e.g., C-Reduce for C/C++)[cite: 120].
    * Grammar-guided reduction (e.g., Perses)[cite: 121, 122].
    * Generalizing beyond deletion (e.g., GTR, DDSet, Alhazen/Avicenna)[cite: 123, 127, 130].

---

### Section 5: Take Home Message

* Delta Debugging is a fundamental algorithm for **automatically simplifying** failure-inducing inputs (and other kinds of differences).
* Its primary value lies in making complex failures **understandable and reproducible** by finding a minimal trigger.
* The `ddmin` algorithm is efficient and elegant, based on systematic testing of subsets with adaptive granularity.
* A robust **test oracle** is essential for practical application.
* While powerful in its basic form, DD inspired many **syntax and semantics-aware variants** for more efficient handling of structured data. It remains a cornerstone technique in automated debugging and software testing.

---

### References (Key Published Works Cited)

1.  [7] A. Zeller and R. Hildebrandt. **"Simplifying and isolating failure-inducing input."** *IEEE Transactions on Software Engineering* 28, no. 2 (2002): 183-200. (The definitive journal version).
2.  [6] R. Hildebrandt and A. Zeller. **"Simplifying failure-inducing input."** *SIGSOFT Software Engineering Notes* (Proc. ISSTA 2000) 25, no. 5 (2000): 135-145. (Focus on input simplification).
3.  [5] A. Zeller. **"Yesterday, my program worked. Today, it does not. Why?"** In *Proceedings of the 7th European Software Engineering Conference held jointly with the 7th ACM SIGSOFT international symposium on Foundations of software engineering (ESEC/FSE-7)*, 1999, pp. 253-267. (The original DD paper on code changes).
4.  [1] B. W. Kernighan and R. Pike. **The Practice of Programming.** Addison-Wesley, 1999. (Discusses manual reduction).
5.  [3] K. Claessen and J. Hughes. **"QuickCheck: A lightweight tool for random testing of Haskell programs."** In *Proceedings of the 5th ACM SIGPLAN International Conference on Functional Programming (ICFP)*, 2000, pp. 268-279. (Influential fuzzing tool often paired with DD).
6.  [9] J. D. Choi and A. Zeller. **"Isolating failure-inducing thread schedules."** In *Proceedings of the ACM SIGSOFT international symposium on Software testing and analysis (ISSTA)*, 2002, pp. 210-220. (Application to concurrency).
7.  [10] H. Cleve and A. Zeller. **"Locating causes of program failures."** In *Proceedings of the 27th International Conference on Software Engineering (ICSE)*, 2005, pp. 342-351. (Application to program state).
8.  [12] C. Le Goues, T. Nguyen, S. Forrest, and W. Weimer. **"GenProg: A generic method for automatic software repair."** *IEEE Transactions on Software Engineering* 38, no. 1 (2012): 54-72. (Application in program repair).
9.  [13] G. Misherghi and Z. Su. **"HDD: Hierarchical delta debugging."** In *Proceedings of the 28th International Conference on Software Engineering (ICSE)*, 2006, pp. 142-151. (Syntax-aware refinement).
10. [14] J. Regehr, Y. Chen, P. Cuoq, E. Eide, C. Ellison, and X. Yang. **"Test-case reduction for C compiler bugs."** In *Proceedings of the 33rd ACM SIGPLAN Conference on Programming Language Design and Implementation (PLDI)*, 2012, pp. 335-346. (Syntax-aware refinement - C-Reduce).
11. [15] C. Sun, Y. Li, Q. Zhang, T. Gu, and Z. Su. **"Perses: Syntax-guided program reduction."** In *Proceedings of the 40th International Conference on Software Engineering (ICSE)*, 2018, pp. 361-371. (Syntax-aware refinement).


## Reveiw Questions

**Lecture: TERMINATOR**

1.  Why is traditional coverage-based Test Case Prioritization often unsuitable for modern automated UI testing, and what alternative information sources does TERMINATOR use?
2.  Explain the analogy between the "Total Recall Problem" and automated UI test case prioritization. How does TERMINATOR leverage Active Learning concepts (specifically Uncertainty and Certainty Sampling) to address this?
3.  Describe the "aggressive undersampling" technique used in TERMINATOR. Why is it necessary, and when is it applied during the algorithm's execution?
4.  What was the most surprising result regarding the performance of TERMINATOR compared to other black-box TCP methods, and what does this suggest about the effectiveness of active learning in this context?

**Lecture: Issues, Bugs, and Enhancements**

1.  What are the practical challenges of using traditional defect prediction models in large organizations with diverse projects, and how does the paper's proposed approach attempt to overcome these?
2.  Explain the ARIMA model (AR, I, MA components) and the "rolling window forecast" methodology used in the study. Why was MAE chosen as the evaluation metric over others like RMSE or MMRE?
3.  Summarize the findings regarding the correlation between issues, bugs, and enhancements in proprietary vs. open-source projects (RQ2).
4.  What is the key practical implication of the finding that issue-based forecasts are statistically similar to attribute-specific forecasts (RQ4) for software project management?

**Lecture: Formally Verified Cloud-Scale Authorization (AuthV2)**

1.  Why did the AWS team choose to rewrite the authorization engine in Dafny instead of attempting to directly verify the legacy Java code? Discuss the trade-offs involved in this decision.
2.  Explain the role and importance of "idiomatic compilation" in the AuthV2 project. Why was the standard Dafny compiler considered insufficient for their production needs?
3.  Discuss the relationship and distinct roles of formal proof and large-scale testing (differential, shadow) in achieving high assurance for AuthV2. Why was $10^{15}$ samples worth of shadow testing deemed necessary despite having verified code?
4.  Beyond ensuring correctness (implementation matches specification), what other significant benefits did the adoption of formal verification methods bring to the AuthV2 project according to the paper?

**Lecture: Delta Debugging**

1.  Explain the core `ddmin` algorithm for input minimization. How does it adapt its strategy (granularity) when initial attempts to remove large input chunks fail, and what does "1-minimal" mean?
2.  Describe the "Oracle Problem" in Delta Debugging. Why is simply checking if *any* error occurred insufficient for `ddmin`, and what techniques does the paper suggest for creating a more effective oracle?
3.  Discuss the SQL Server case study presented in the paper. How did Delta Debugging help the testers overcome the challenge posed by the development team, and what did this illustrate about DD's practical value?
4.  What are the inherent limitations of the basic, syntax-agnostic Delta Debugging algorithm, particularly for structured inputs, and briefly mention some types of refinements developed to address these limitations?
