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
      



# Advanced Topics in Software Engineering: Beyond the Textbook


Here we  delve into some nuanced and advanced topics in Software Engineering, drawing heavily from recent discussions and reflections within the field, particularly concerning testing, 
AI's role, and the realities of SE practice. 


## 1. The Economics and Strategy of Testing Levels


While we often categorize testing into black-box, white-box, and formal methods, a crucial graduate-level understanding involves the *economics* and *strategy* behind choosing these levels.


* **Cost-Benefit Curve:** There's a clear trade-off[cite: 119]. As you move from black-box to white-box and then to formal methods, the potential rigor and types of defects you can find increase[cite: 119]. However, the required knowledge about the system internals grows significantly, making these advanced methods progressively more expensive to acquire, represent (correctly), and execute[cite: 120, 121, 122].
* **Strategic Application:** Consequently, rigorous formal methods are typically reserved for the most mission-critical components where the cost of failure is exceptionally high[cite: 122, 124, 125]. Most systems will employ a blend, with black-box testing being common, white-box used for key areas, and formal methods applied sparingly[cite: 123, 125]. Amazon's extensive use of formal methods for verifying its cloud services is a notable, large-scale industrial application, justified by the massive user base and business value[cite: 360, 361, 364, 84].
* **Test Case Prioritization:** For large test suites, re-running everything is often infeasible[cite: 27]. Techniques like the Elbaum heuristic (prioritizing tests that failed recently, are new, or haven't run in a while) are critical for efficiently finding failures in continuous integration environments, as demonstrated in industrial settings like Google[cite: 28, 142, 145, 147, 148, 149, 150].


## 2. The Lifecycle of SE Research & Reproducibility


Understanding SE isn't just about technical methods; it also involves understanding how knowledge is created, validated, and sometimes, stagnates.


* **Reproducibility:** A significant movement pushed for making SE research reproducible by publishing the data and scripts alongside papers[cite: 184, 185, 294, 295, 296]. This was initially met with resistance ("no one will share data") but became crucial[cite: 186, 187, 203].
* **Data Repository Lifecycle:** Shared datasets often go through phases[cite: 202]:
    1.  *Rejection/Skepticism:* "No one will give you data" or "It's useless"[cite: 203].
    2.  *Acceptance:* "Okay, maybe it's not completely useless"[cite: 204].
    3.  *Gold Standard:* Becomes the benchmark; papers *must* use this data[cite: 205].
    4.  *Graveyard:* Results become repetitive; the data is overused, hindering novelty[cite: 206, 207]. New research using old benchmark data may even be rejected[cite: 208, 209].
* **Sociology of Impact:** For research to have an impact, it often needs to provide usable tools and exciting baseline results that others can build upon[cite: 297, 298].


## 3. Data Labeling, Active Learning, and Understandable AI


The rise of AI and Machine Learning in SE brings new challenges, particularly around data.


* **The Labeling Bottleneck:** Many SE AI techniques rely on labeled data (e.g., identifying defect-prone modules)[cite: 213]. However, obtaining accurate labels is costly and error-prone[cite: 213, 215]. Manually checking even a small sample often reveals inconsistencies or disagreements[cite: 215, 216]. Automating labeling using LLMs might just propagate errors from the data they were trained on[cite: 217, 218, 219, 285].
* **Minimal Labeling & Active Learning:** How can we build useful models with minimal, reliable ground truth[cite: 220]? Active learning approaches aim to do this:
    * Start with very few trusted labeled examples (e.g., 4-12)[cite: 220, 290].
    * Build an initial model (e.g., using incremental Bayesian classifiers)[cite: 220, 221, 227, 235].
    * The model queries the human expert on uncertain or informative unlabeled instances[cite: 222, 226].
    * The model refines itself incrementally with this feedback[cite: 221, 222].
    * Remarkably high performance can often be achieved with only a few dozen interactions[cite: 235, 256, 264, 291], suggesting the world (or SE data) might be more "probable" or structured than assumed[cite: 236, 259].
* **VITAL - Understandable AI:** In critical systems, it's vital that we can understand *why* an AI makes a decision[cite: 233, 234]. The "VITAL" principle (Verify, Inspect, Test, Analyze, Locally) emphasizes building systems (perhaps simpler, incremental ones like active learners) that are inherently more understandable and certifiable, rather than opaque black boxes[cite: 232, 234, 235, 278].


## 4. Advanced Concepts in Requirements, Design & Testing Interaction


* **Differential Testing:** A specific black-box technique explicitly mentioned where you compare the outputs of different implementations (e.g., multiple SQL engines, JavaScript interpreters) on the same inputs[cite: 314, 315, 411, 412, 413]. Discrepancies point to potential bugs[cite: 320, 414].
* **Diversity in Team Construction:** Beyond diverse test *inputs*[cite: 323], diversity in the development *team* (e.g., backgrounds, experiences, abilities) is crucial for identifying a broader range of requirements, potential failure modes, and even business opportunities that a homogenous team might miss[cite: 331, 333, 337, 338, 339].
* **V-Diagram Dynamics:** The V-Diagram isn't static[cite: 507]. Requirements and design activities *generate expectations* (oracles) for testing[cite: 513, 514, 571]. Conversely, testing activities *generate knowledge* about the system and its context, which should feed back to refine requirements and future designs[cite: 515, 520, 572].


## 5. Reliability Engineering: Beyond Simple Fault-Failure Models


Classical reliability engineering often tracked pre-release faults to predict post-release failures, sometimes using reliability growth curves[cite: 18, 589, 590, 591]. However, this view is often too simplistic[cite: 593].


* **Fenton & Neil's Critique:** Empirical data shows a poor correlation between pre-release faults and post-release failures[cite: 19, 595, 596, 597]. A system might have many faults found in testing but few failures in operation, or vice-versa[cite: 19, 601, 602].
* **Complex Causal Models:** Failures are influenced by more than just latent faults[cite: 20, 21, 603, 604]. Factors include:
    * Actual operational usage (if no one uses the faulty feature, it won't fail)[cite: 21, 608, 609, 611].
    * Testing effort (no testing finds no faults)[cite: 21, 612, 620].
    * Design effort and complexity[cite: 21, 614, 631, 633, 636].
    * Defects introduced during development[cite: 631].
* **Management Decision Tools:** These richer causal models (often represented as Bayesian networks) allow for "what-if" analysis[cite: 22, 615, 617, 634]. Managers can explore trade-offs: e.g., "To reduce operational failures without increasing testing, we might need to invest more in design or reduce complexity"[cite: 635, 636, 637]. The goal shifts from simple prediction to informed decision-making[cite: 645, 651, 652]. Subject matter expertise can be surprisingly effective in building these causal models, even without extensive project data[cite: 653, 656, 657, 658].


## 6. The Evolving Role of the Software Engineer


The advent of powerful LLMs raises questions about the future of SE roles[cite: 574, 575].


* **LLM Strengths & Weaknesses:** LLMs excel at common, well-documented tasks (e.g., generating boilerplate code, web components) trained from vast datasets of human examples[cite: 509, 526, 527, 537, 538, 540]. They struggle with novel problems, complex decision-making involving trade-offs (multi-objective optimization), or tasks where optimal human solutions aren't known or documented[cite: 528, 529, 530, 532, 534, 541]. Human rationality often involves iterative exploration, feedback, and reflection – processes not inherent in current large pre-trained models[cite: 542, 543, 544].
* **Beyond Coding:** Empirical studies show that professional programmers spend a minority of their time actually coding[cite: 561, 563, 564]. Much time is spent on requirements analysis, design reflection, communication, learning, debugging, and understanding the system – building knowledge[cite: 566, 567].
* **Future Skills:** If coding itself becomes increasingly automated[cite: 575, 576], the value shifts to the uniquely human aspects: understanding context, making trade-off decisions, ensuring quality, defining requirements, managing complexity, and critically evaluating AI-generated outputs[cite: 577, 578, 579, 580, 583]. The role evolves from "coder" to "decision-maker," "quality assurer," and "system architect"[cite: 578, 579, 580].


## 7. Communication, Cognition, and SE


* **The Power of Poor Communication:** Language is an imperfect, narrow channel for conveying complex thoughts[cite: 375, 376, 377, 379, 380, 381, 382]. The inherent need to interpret, clarify, question, and repair distorted signals is arguably what drives critical thinking, reflection, science, and engineering[cite: 371, 374, 383, 384, 385, 386, 387, 388]. Testing and debugging are manifestations of this reflective process[cite: 388].


## Review


1.	Explain the typical cost-benefit trade-off when choosing between black-box, white-box, and formal methods for testing. Why aren't formal methods used for all components?
2.	Describe the four typical phases in the lifecycle of a shared SE data repository used for research. Why might using data from the "graveyard" phase be problematic?
3.	What is the "labeling bottleneck" in applying AI/ML to SE problems, and how do Active Learning approaches attempt to address it?
4.	What does the acronym VITAL stand for, and what core principle regarding AI/SE systems does it advocate?
5.	According to Fenton & Neil's critique, why is the simple causal model "pre-release faults predict post-release failures" often inaccurate? List at least two other factors that influence post-release failures.
6.	How can the richer causal models proposed by reliability engineers (like Fenton & Neil's) be used as management decision tools, rather than just for prediction?
7.	How does the V-Diagram represent a dynamic process, specifically regarding the relationship between requirements definition and testing activities?
8.	Considering the potential automation capabilities of LLMs, how might the role and required skills of a software engineer evolve in the future, moving beyond just coding?


