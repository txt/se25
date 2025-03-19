<p><a name=top> </a>&nbsp;</p>
<p align=center>
    <a
    href="/README.md#top"><img
    src="https://img.shields.io/badge/Home-%23ff5733?style=for-the-badge&logo=home&logoColor=white"></a> <a
    href="/docs/syllabus.md#top"><img
    src="https://img.shields.io/badge/Syllabus-%230055ff?style=for-the-badge&logo=openai&logoColor=white"></a> <a
    href="https://docs.google.com/spreadsheets/d/1Jlx-BBsvVqmWhW1L9Fz6u18vPSjGXj1i/edit?usp=sharing&ouid=110996670184359055145&rtpof=true&sd=true"><img
    src="https://img.shields.io/badge/Groups-%23ffd700?style=for-the-badge&logo=users&logoColor=white"></a> <a
    href="https://moodle-courses2425.wolfware.ncsu.edu/course/view.php?id=7150"><img
    src="https://img.shields.io/badge/Moodle-%23dc143c?style=for-the-badge&logo=moodle&logoColor=white"></a> <a
    href="https://discord.gg/whDXzJGP"><img
    src="https://img.shields.io/badge/Discord-%23008080?style=for-the-badge&logo=discord&logoColor=white"></a> <a
    href="https://ncsu.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=958aa5e8-f99e-441f-a545-b26400dfe515"><img
    src="https://img.shields.io/badge/Videos-%23ffa500?style=for-the-badge&logo=youtube&logoColor=white"></a> <a
    href="/LICENSE.md"><img
    src="https://img.shields.io/badge/(c)%20Tim%20Menzies,%202025-%234b4b4b?style=for-the-badge&logoColor=white"></a>
    <br>&nbsp;<br>
    <img width=200 src="/img/banner2.png">
</p>
<h1 align="center">:cyclone:&nbsp;CSC510: Software Engineering<br>NC&nbsp;State, Spring&nbsp;'25</h1>
      



# Design5


## **Glossary of Technical Terms**
- **Project Management**
  - Technical Debt : bad design choices are dirt that accumulate in the software, slowing down maintenance, 
  - Developer Churn: rate at which old codes are replaced by new ones
  - Issue Resolution Rate : time between issue opened and issue closed
- **Software Metrics**
  - Cyclomatic Complexity: internal twists and turns of a function
  - Halstead Metrics : a measure of reading complexity of the code (computed from number of operators and operands)
  - Code Churn
  - Lines of Code (LOC)
- **Code Review Practices**
  - Static Analysis
    - everything you can do without executing the code
    - e.g. find things used, but never set
  - Linters
    - Static analysis tools that report strange smells.
    - Can have many false positives
  - God Class: an anti-pattern.  Code is one huge class plus many methodless classes.
  - Single Responsibility Principle (SRP)
    - the antidote to god classes
- **Defect Prediction**
  - Early Bird Effect: 
    - most buggy commits happen early in the project's life cycle 
    - a model learned just from the early data can suffice for the rest of that project's lifetime
  - False Negative Rate
  - True Positive Rate
  - Recall = TPR/(TPR + FNR) = of all the times "it" was there, how often did you miss it.
  - Process Metrics
  - Product Metrics
- **Machine Learning in SE**
  - Large Language Models (LLMs)
    - Now that's a whole lecture in itself.
  - Random Fores
    - Build N decision trees, each time using (say) _sqrt(A)_ of the attributes A and   10% of the rows (all picked at random) 
    - Make a decision by voting across the ensemble
  - Naïve Bayes :  divide training data into classes, collect stats on each class, when new examples arrive, 
   find the class with most similar values
  - Support Vector Machines (SVMs) : map ra dimensions into a higher dimensional space, search that space for
    _support vectors_ that are rows nearest the rows of other classes.
  - Logistic Regression : maps any regression formula into a ski slop 0..1 where 0 means "class0" and 1 means "class1"
          
          P(Y = 1 | X) = 1 / (1 + exp(- (β₀ + β₁X₁ + β₂X₂ + ... + βₙXₙ)))


    Where:
    - **P(Y = 1 | X)** is the probability of class 1 given input **X**.
    - **β₀** is the intercept.
    - **β₁, β₂, ..., βₙ** are the model coefficients.
    - **X₁, X₂, ..., Xₙ** are the feature values.
    - **exp(x)** is the exponential function (e^x).


    If P(Y = 1 | X) ≥ 0.5, predict **Y = 1**,  
    otherwise, predict **Y = 0**.


##  Beyond Traditional Metrics: Lessons from Real-World Software Engineering


In modern software engineering, metrics play a crucial role in predicting software quality, maintaining systems, and improving developer workflows. However, traditional methods often fall short in practical applications. Today, we explore:
- How **code reviews and automation tools** enhance software quality.
- How **early defect prediction** challenges the assumption that "more data is better."
- Why **process metrics are superior to product metrics** for predicting defects.
- Why the **hype around large language models (LLMs) for SE analytics is misleading**.


## 1. Code Reviews and Automated Defect Detection
### 1.1 The Role of Code Reviews


Code reviews are an integral part of software development, ensuring **maintainability, correctness, and clarity**. Yet, traditional metrics do not always align with what human reviewers prioritize. Key practices include:


- **Detecting "God Classes"**
- A *God Class* is a class that **violates separation of concerns**, accumulating excessive responsibility.
- Example: A monolithic **UserManager class** handling **authentication, database queries, and UI rendering**.
- **Solution:** Break down responsibilities using **Single Responsibility Principle (SRP)**.


- **Refactoring Large Methods**
- **Why?** Large methods are often difficult to test and maintain.
- **Strategy:** If a method has **multiple responsibilities**, split it into smaller ones.
- Example: A function that both **validates user input** and **stores it in a database** should be **two separate functions**.


- **The Value of Automated Checkers**
- Tools like **static analysis linters**, **CI/CD pipeline checks**, and **pre-commit hooks** help automate defect detection.
- **Prevention over detection**: Catch issues **before** code reaches production.


### **2. Early Defect Prediction: The "Early Bird Effect"**


> *What if a software project’s first 150 commits contain all the information needed to predict future defects?*


### **2.1 The Traditional Approach to Defect Prediction**
- Traditional defect prediction **accumulates data over the project’s lifespan**.
- The assumption: **More data = Better predictions**.
- However, **later commits contain less useful information**.


### **2.2 The "Early Bird Effect"**
- Research on **700 GitHub projects (722,471 commits)** found:
- A defect prediction model trained on **only the first 150 commits** performs **as well** as models trained on the full project history.
- Later commits contribute **little new information** to defect trends.
- **Implication:** Instead of continuously retraining models, **learning early in a project's life cycle is enough**.


### **2.3 Why Does Early Learning Work?**
- **Developers establish patterns early** (e.g., coding style, test quality).
- **Most structural issues appear early**—major architectural flaws persist.
- **Software teams are predictable**: Despite personnel changes, project structure remains stable.


### **2.4 Impact on Software Engineering**
- **Practical Advice:** Focus **defect prediction efforts** on early commits.
- **Challenge to Big Data:** Large-scale SE analytics often overemphasize **quantity over quality**.


## **3. The Superiority of Process Metrics Over Product Metrics**
### **3.1 Revisiting the Difference**


| **Process Metrics**| **Product Metrics**  |
|----------------------|----------------------|
| **Who does what, when, how** | **What is written in the code** |
| **Generalizes across languages** | **Language-specific (e.g., inheritance depth in OOP)** |
| **Captures team behavior** | **Captures code structure** |


### **3.2 Why Process Metrics Win**
- **Empirical Findings:** Across **700+ GitHub projects**, process metrics consistently **outperform** product metrics in defect prediction.
- **Why?** Software defects are often a result of **developer behavior** rather than code structure alone.
- **Example:** If a **highly active developer introduces frequent defects**, that pattern is more predictive than whether they wrote a **100-line function**.


### **3.3 Process Metrics in Action**
- **Developer churn:** High turnover increases the risk of **hidden bugs**.
- **Commit frequency:** Irregular commits may indicate **unstable features**.
- **Time-to-close issues:** Long-standing issues suggest **technical debt accumulation**.


### **3.4 A Practical Application**
- **Instead of measuring cyclomatic complexity**, track:
- Who **owns** the most error-prone files.
- How quickly bugs in those files are **fixed**.
- How often the same developer introduces **repeated defects**.


## **4. Critique of Large Language Models (LLMs) in Software Engineering**
> *Why are we using billion-parameter AI models to solve problems that simpler statistics handle just fine?*


### **4.1 Overhyped AI Claims**
- Many AI-driven SE tools claim to **predict defects** better than traditional methods.
- However, **only 5% of AI-based SE papers actually compare results to non-AI methods**.
- In most comparisons, **simple statistical models outperform deep learning**.


### **4.2 Why LLMs Aren't Always the Right Tool**
1. **Computationally Expensive**
 - Training and maintaining **massive** AI models is costly.
 - Example: A large tech company reported spending **millions** annually on model fine-tuning.


2. **Lack of Benchmarking**
 - Many AI tools lack proper **comparisons to classic defect prediction models**.


3. **Better Alternatives Exist**
 - Companies optimize performance using **simpler techniques**.
 - Example: Instead of LLMs, **Facebook/Meta optimizes prefetch policies** to save CPU costs.


### **4.3 Where LLMs Might Actually Help**
- **Code Generation & Auto-Completion**: Good for tools like Copilot.
- **Automated Documentation**: Can summarize large codebases.
- **Bug Explanation**: Describing issues in natural language.


### **4.4 When to Avoid LLMs**
- **Defect Prediction**: Traditional process metrics **work better**.
- **Effort Estimation**: Rule-based models outperform deep learning.
- **Open-Source Project Health**: Simple analytics capture trends without massive AI models.


## **5. Conclusion: Key Takeaways**
### **1. Code Review Best Practices**
✅ Break **God classes** into smaller units.  
✅ Use **automated tools** for defect detection.  
✅ Refactor **large methods** into modular components.


### **2. Defect Prediction Can Be Done Early**
✅ The **first 150 commits** predict defects as well as full project history.  
✅ Later project data contains **less useful signal**.  
✅ More data ≠ better predictions.


### **3. Process Metrics Are More Useful Than Product Metrics**
✅ **Team behavior** drives defects more than code complexity.  
✅ **Developer churn and commit frequency** are strong defect indicators.  
✅ **Tracking "who changes what" is better than measuring code structure.**


### **4. LLMs Are Overhyped for SE Analytics**
✅ **Simple models outperform** deep learning for defect prediction.    
✅ **LLMs are best for documentation, not analytics.**  
✅ **Process metrics and lightweight analytics are superior.**   


---


## **Discussion Questions**
1. **What are the key differences between process metrics and product metrics, and why do process metrics perform better in defect prediction?**
2. **How can software teams integrate automated defect detection without increasing developer friction?**
3. **What are the implications of the "Early Bird Effect" for how organizations approach software analytics?**
4. **In what situations might product metrics still be valuable, despite their inferiority to process metrics?**
5. **What are some ethical and practical concerns around using LLMs in software defect prediction?**


