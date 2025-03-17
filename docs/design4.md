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
      



# Deisgn4: Metrics: The Standard View vs. The Rebel View**


Sources: 


- your text book , section 5.7 https://softengbook.org/chapter5
- Menzies 2025, Retrospective: Data Mining Static Code Attributes to Learn Defect Predictors, https://arxiv.org/pdf/2501.15662,
- Xia, Menzies, et al. 2022, _Predicting health indicators for open source projects (using hyperparameter optimization)_
  Empirical SE journal, 2022, https://arxiv.org/pdf/2006.07240


## **Introduction (5 min)**
- **Purpose of Metrics:** Quantify aspects of software quality, maintainability, and defect prediction.
- **Traditional Uses:** Predict defects, guide refactoring, and ensure code quality.
- **Critical Perspective:** Are metrics always reliable? Is more data always better? Today, we contrast the standard view with the rebel view.


## **Some History: The Evolution of Software Analytics**


### **Early Realizations**
- **Maurice Wilkes (1950s):**  
  - Realized that **debugging** would consume a large part of his career.
  - Software development was inherently **buggy**.


### **First Software Metrics**
- **Fumio Akiyama (1971):**  
  - Proposed the first **size law**:  
    - Defects (**D**) are a function of **lines of code (LOC)**.


- **Thomas McCabe (1976):**  
  - Argued that **LOC was less important** than code complexity.
  - Introduced **Cyclomatic Complexity**:
    - If complexity **> 10**, defects are **more likely**.


### **Effort Estimation Models**
- **Barry Boehm (1981):**  
  - Proposed an **exponential** relationship between program size and effort:
    - **Effort = a * KLOC^b * Mi**  
    - Where **Mi** represents effort multipliers based on project characteristics.
  - Found that effort estimation models **require extensive modification** for new projects.


### **The Rise of Data-Driven Approaches**
- **Current machine learning models** allow faster and more accurate prediction of:
  - **Defects**
  - **Effort estimation**
  - **Software quality**
- **Data-mining techniques** have replaced early hand-crafted rules.


### One Key insight


Process metrics


- who does what, how
- represent programmer activity
- generalized across multiple projects/programming languages


Product methods


- what, where
- represent code structure
- specific to specific langauges (e.g. "C" has no class hierachies so "depth of inheritance tree" is not a useful metric)


![image](https://github.com/user-attachments/assets/cc4e2423-79e6-48b9-b7ff-6c905a8078b3)


Process beats product. Respoundingly. Results from 722,471 commits from 700 Github projects 


![image](https://github.com/user-attachments/assets/4f58df96-1983-487c-865c-43094844380f)


recall = (true positives) / (all defects)


### **Key Takeaways**
- Early software metrics were **simple but useful** in their time.
- **Modern software analytics** uses **project-specific learning** rather than fixed models.
- **Current defect and effort estimation models** are continuously evolving with **data-driven techniques**.


## **The Standard View (10 min)**


### **Traditional Software Metrics Principles**
1. **Metrics are Meaningful and Necessary**  
   - Standard metrics like cyclomatic complexity, Halstead metrics, and code churn provide insights into software quality.
   - They help predict defects, prioritize testing efforts, and guide maintenance.


2. **More Data is Better**  
   - The assumption: More historical data leads to better models.
   - Collecting numerous attributes is believed to enhance defect prediction.


3. **Universal Importance of Specific Metrics**  
   - Certain metrics (e.g., McCabe’s complexity, lines of code) are widely accepted as indicators of software quality.


4. **Benchmarking with Metrics**  
   - Repositories like PROMISE and MSR ensure reproducibility and allow cross-study comparisons.


5. **Defect Prediction Models Enhance Quality**  
   - Combining static code analysis with machine learning is thought to improve defect detection and reduce maintenance costs.


---


## **The Rebel View (10 min)**


> “For SE, the best thing to do with most data is to throw it away.” — Tim Menzies


### **Challenging Traditional Assumptions**
1. **Irrelevance of Specific Metrics**  
   - Different projects require different metrics; no universal set exists.
   - **Menzies’s 1st Law:** "Gather all metrics, then prune irrelevant ones."
   - **Implication:** Use data-driven selection instead of debating specific metrics.


2. **Combined Importance of Static Code Attributes**  
   - Individually weak metrics become strong when combined.
   - **Menzies’s 2nd Law:** "Static code attributes create useful predictors only when used together."
   - **Implication:** Simple models using multiple weak signals often outperform complex handcrafted models.


3. **Redundancy of Excessive Data**  
   - Pruning data can improve models.
   - Power laws and redundancy in software repositories often lead to overfitting on noise.


4. **Over-Hype of AI and Large Language Models (LLMs)**  
   - The assumption that bigger models always perform better is flawed.
   - Many AI-based defect predictors lack comparison to simpler statistical models, indicating methodological failures.


5. **Value of Imperfect Data**  
   - Noisy or "bad" data can still generate useful models.
   - Dirty data does not equate to useless data.


6. **Simplicity in Addressing SE Problems**  
   - Simple approaches often outperform complex models.
   - Overcomplicated AI-driven defect prediction models can often be replaced with simpler techniques like nearest neighbor matching.


---


## **Effort Estimation in Waterfall Projects vs. Project Health Estimation in Open Source Projects (10 min)**


### **Effort Estimation in Waterfall Projects**
- **Definition:** Predicting the amount of effort required to complete each phase of a project.
- **Techniques:**
  - **Top-Down Estimation:** Assessing the overall project and breaking it down into smaller components.
  - **Bottom-Up Estimation:** Estimating time for each small task and aggregating.
  - **Use of Models:** Applying models like COCOMO to estimate effort based on project size and complexity.
- **Challenges:**
  - **Rigidity:** Difficulty adapting to changes once the project is underway.
  - **Uncertainty:** Early estimates may be inaccurate due to unforeseen complexities.


### **Project Health Estimation in Open Source Projects**
- **Definition:** Assessing the sustainability and vitality of an open-source project.
- **Indicators:**
  - **Contributor Activity:** Number of active contributors and frequency of contributions.
  - **Issue Resolution:** Rate at which issues are opened and closed.
  - **Pull Request Management:** Timeliness and frequency of pull request reviews and merges.
  - **Community Engagement:** Level of interaction among users and developers.
- **Techniques:**
  - **Data Analysis:** Utilizing platforms like GitHub to analyze metrics such as commits, issues, and pull requests.
  - **Automated Tools:** Employing tools to monitor project metrics and visualize trends.
- **Challenges:**
  - **Data Overload:** Abundance of data can make it difficult to identify relevant health indicators.
  - **Dynamic Nature:** Open-source projects can change rapidly, requiring continuous monitoring.


![image](https://github.com/user-attachments/assets/bee253c5-8376-44ea-9d1d-b2fa9a908767)


![image](https://github.com/user-attachments/assets/c55ae997-30ce-43c4-aab6-03d204c21f62)


MAE = abs(predicted - actual) 


MRE = MAE / actual
 


### **Key Differences:**
- **Estimation Focus:**
  - *Waterfall Projects:* Focus on predicting future effort and resources.
  - *Open Source Projects:* Focus on assessing current health and sustainability.
- **Methodology:**
  - *Waterfall Projects:* Structured, sequential phases with predefined milestones.
  - *Open Source Projects:* Flexible, community-driven development with continuous integration.
 


