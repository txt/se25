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
      



# Mini-review jan 17


|when| what|
|----|-----|
|11:30 | open moodle, struggle to work out how to download html of student responses |
| 11:37 | pre-prompting. hello chat gpt. here are the questions. how would you answer them|
| 11:40 | load student html, ask [Prompt1](#prompt1). Get [Response1](#response1) and [Response2](#response2) |
| 11:45 | start typing mitigations for students |
| 12:01 | starting verification. read 15 responses at random| 
| 12:07 | realized i cannot summarize the student responses, unless i'd structured the input questions in much greater detail. so i can't even judge LLM effectiveness since it is doing something I can't |
| 12:10 | end. Total time= 40 mins|


## Prompt2


```
 Identify Common Themes:


1. Highlight areas where students performed well.
2. Identify common misunderstandings or topics requiring clarification.
```


## Response1


### Common Themes


#### **Areas Where Students Performed Well**
1. **Defining Metrics**:
   - Most students provided clear distinctions between internal process metrics (focused on development process efficiency) and external product metrics (focused on end-user satisfaction and product quality).
   - Students provided appropriate examples, such as "defect resolution time" for internal metrics and "customer satisfaction" for external metrics.


2. **Identifying "Skill Required for Functional Programming" as an Internal Metric**:
   - A majority classified this correctly as an internal metric.
   - Justifications included its focus on team capabilities and relevance to internal development processes rather than product outcomes.


3. **Critically Evaluating COBOL Transition**:
   - Students generally recognized the impracticality of phasing out COBOL globally by 2025.
   - Many highlighted real-world examples, such as banking systems and legacy infrastructure, to emphasize the cost, time, and risks involved.


---


#### **Common Misunderstandings or Areas Requiring Clarification**
1. **Confusion Over Metric Boundaries**:
   - Some students struggled to distinguish between internal and external metrics when skills indirectly influenced product outcomes.
   - A few classified "skill required for functional programming" as external due to its impact on end-user experience, showing a misunderstanding of direct versus indirect effects.


2. **Limited Discussion on Feasibility**:
   - While most responses addressed the impracticality of removing COBOL, a few lacked depth or relied on generalizations without supporting examples.
   - Some students failed to provide constructive alternatives (e.g., phased modernization) for managing COBOL's challenges.


3. **Imbalance in Examples**:
   - Examples provided for internal metrics were often more technical and specific, while external metrics sometimes lacked concrete, impactful examples.


## Response2


Chatgpt asks: Would you like to see detailed recommendations or a refined strategy for addressing these areas in class discussions?


I say yes


Detailed list of actions follow


## Mitigations:


Question answering strategies:


- Consider what,why example
  - What: Define the concept clearly.
  - Why: Explain its importance or role.
  - Example: Provide a concrete and relevant example.


### Internal/External Metrics

| Focus       | Metric Category | Internal (Development Team)                                                                                                                                                                                                                                                                                                               | External (User/Business)                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Process** | Efficiency      | *   **Code Churn:** Frequency of code additions, modifications, and deletions (related to refactoring and incremental design).<br>*   **Test Coverage:** Percentage of code covered by tests (emphasized by TDD).<br>*   **Iteration Velocity:** Rate of progress within sprints (measured using story points and burn-down charts).<br>*   **Build Time:** Time taken to compile and build the software (explicitly discussed).<br>*   **Code Review Metrics:** Number of defects found, time spent on reviews (implied by the importance of code review).<br>*   **Defect Detection Rate:** How quickly are defects found during development (implied by TDD and testing). | *   **Time to Market/Release Frequency:** How often new versions are released (explicitly discussed shift to continuous releases).<br>*   **Customer Satisfaction (Proxy):** Measured by feedback gathered through customer representatives and user story development (implied).<br>*   **Adoption Rate:** How quickly are new features or releases adopted by users (implied by continuous release discussion).<br>*   **Agility/Responsiveness:** How quickly the team can adapt to changing requirements (implied by Agile Manifesto). |
|             | Quality         | *   **Code Complexity:** Measures like cyclomatic complexity (implied by refactoring discussions).<br>*   **Test Suite Size/Maintainability:** How large and complex are the test suites (addressed by the discussion of Google's test suite issues).<br>*   **Code Duplication:** Amount of redundant code (implied by the focus on code quality).                                                                                                                                                                                                                                                                                                                                                                                                 | *   **Usability:** Ease of use for end-users (implied by focus on user stories and user-visible features).<br>*   **Reliability:** Probability of failure-free operation (implied by testing and Arpanet example).<br>*   **Performance:** Speed, responsiveness, resource usage (not directly addressed but relevant).<br>*   **Security:** Resistance to vulnerabilities (not directly addressed but relevant).<br>*   **Accessibility:** Ease of use for people with disabilities (not directly addressed but relevant).                                                                                                                                                                                                                                                                                                                                                                                                         |
| **Resource** | Utilization     | *   **Effort/Time Spent:** Estimated and actual time spent on tasks (using story points and planning poker).<br>*   **Slack Time Utilization:** How effectively is slack time used for experimentation and skill development.<br>*   **Developer Productivity:** Output per unit of time (implied by discussion of overwork and diminishing returns).                                                                                                                                                                                                                                                                                                                                                                                                                    | *   **Cost (Budget Adherence):** Actual cost vs. planned budget (explicitly mentioned in project examples).<br>*   **Return on Investment (ROI):** Financial return generated by the software (not explicitly addressed but a key business metric).<br>*   **Cost per Defect (External):** Cost of fixing defects found after release (not explicitly addressed but relevant).                                                                                                                                                                                                                                                                                                                                                                                      |
| **Product**  | Characteristics | *   **Lines of Code (LOC):** Size of the codebase (indirectly mentioned).<br>*   **Technical Debt:** Accumulated design or implementation issues (implied by refactoring).<br>*   **Code Style Consistency:** Adherence to coding standards (implied by code review).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | *   **Functionality:** Features offered by the software (driven by user stories).<br>*   **Maintainability:** Ease of modifying and updating the software (implied by refactoring and code review).<br>*   **Portability:** Ability to run on different platforms (not directly addressed but relevant).<br>*   **Interoperability:** Ability to interact with other systems (not directly addressed but relevant).<br>*   **Scalability:** Ability to handle increasing load (implied by the discussion of large systems and continuous releases).<br>*   **Accessibility:** Ease of use for people with disabilities (not directly addressed but relevant). | 

### The Question of COBOL


Common Misunderstandings


1. **Overlooking Feasibility**:
   - Some students assumed removing COBOL globally by 2025 is straightforward without considering the scale of legacy systems.


2. **Lack of Depth**:
   - Responses lacked detailed analysis of the risks, such as:
     - High migration costs.
     - Potential disruptions in critical systems (e.g., banking, government).


3. **Absence of Alternatives**:
   - Few students proposed realistic strategies, such as:
     - Phased modernization.
     - Hybrid systems combining legacy COBOL with modern tech.


4. **Oversimplified Criticism**:
   - Generalized statements like "COBOL is outdated" without discussing its reliability in legacy contexts.


Key Concepts to Reinforce


- **Legacy System Challenges**:
  - Engineers can't just advocate for shiny new toys without considering the cost to deploy
  - COBOL systems are deeply embedded in critical infrastructures.
  - Transition involves risks: downtime, data loss, and high costs.


- **Gradual Modernization**:
  - Replace high-priority systems first.
  - Train a new workforce in COBOL and modern technologies to manage the transition.
    - Which is tough to do


- **Real-World Context**:
  - Example: Commonwealth Bank of Australia took 5 years and billions to replace COBOL.


