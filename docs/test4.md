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

 Today, we'll delve into some nuanced and advanced topics in Software Engineering, drawing heavily from recent discussions and reflections within the field, particularly concerning testing, AI's role, and the realities of SE practice. These concepts build upon foundational knowledge but push us to consider the socio-technical complexities and evolving challenges in our discipline.

## 1. The Economics and Strategy of Testing Levels

While we often categorize testing into black-box, white-box, and formal methods, a crucial graduate-level understanding involves the *economics* and *strategy* behind choosing these levels.

* **Cost-Benefit Curve:** There's a clear trade-off. As you move from black-box to white-box and then to formal methods, the potential rigor and types of defects you can find increase. However, the required knowledge about the system internals grows significantly, making these advanced methods progressively more expensive to acquire, represent (correctly), and execute.
* **Strategic Application:** Consequently, rigorous formal methods are typically reserved for the most mission-critical components where the cost of failure is exceptionally high. Most systems will employ a blend, with black-box testing being common, white-box used for key areas, and formal methods applied sparingly. Amazon's extensive use of formal methods for verifying its cloud services is a notable, large-scale industrial application, justified by the massive user base and business value.
* **Test Case Prioritization:** For large test suites, re-running everything is often infeasible. Techniques like the Elbaum heuristic (prioritizing tests that failed recently, are new, or haven't run in a while) are critical for efficiently finding failures in continuous integration environments, as demonstrated in industrial settings like Google.

## 2. The Lifecycle of SE Research & Reproducibility

Understanding SE isn't just about technical methods; it also involves understanding how knowledge is created, validated, and sometimes, stagnates.

* **Reproducibility:** A significant movement pushed for making SE research reproducible by publishing the data and scripts alongside papers. This was initially met with resistance ("no one will share data") but became crucial.
* **Data Repository Lifecycle:** Shared datasets often go through phases:
    1.  *Rejection/Skepticism:* "No one will give you data" or "It's useless".
    2.  *Acceptance:* "Okay, maybe it's not completely useless".
    3.  *Gold Standard:* Becomes the benchmark; papers *must* use this data.
    4.  *Graveyard:* Results become repetitive; the data is overused, hindering novelty. New research using old benchmark data may even be rejected.
* **Sociology of Impact:** For research to have an impact, it often needs to provide usable tools and exciting baseline results that others can build upon.

## 3. Data Labeling, Active Learning, and Understandable AI

The rise of AI and Machine Learning in SE brings new challenges, particularly around data.

* **The Labeling Bottleneck:** Many SE AI techniques rely on labeled data (e.g., identifying defect-prone modules). However, obtaining accurate labels is costly and error-prone. Manually checking even a small sample often reveals inconsistencies or disagreements. Automating labeling using LLMs might just propagate errors from the data they were trained on.
* **Minimal Labeling & Active Learning:** How can we build useful models with minimal, reliable ground truth? Active learning approaches aim to do this:
    * Start with very few trusted labeled examples (e.g., 4-12).
    * Build an initial model (e.g., using incremental Bayesian classifiers).
    * The model queries the human expert on uncertain or informative unlabeled instances.
    * The model refines itself incrementally with this feedback.
    * Remarkably high performance can often be achieved with only a few dozen interactions, suggesting the world (or SE data) might be more "probable" or structured than assumed.
* **VITAL - Understandable AI:** In critical systems, it's vital that we can understand *why* an AI makes a decision. The "VITAL" principle (Verify, Inspect, Test, Analyze, Locally) emphasizes building systems (perhaps simpler, incremental ones like active learners) that are inherently more understandable and certifiable, rather than opaque black boxes.

## 4. Advanced Concepts in Requirements, Design & Testing Interaction

* **Differential Testing:** A specific black-box technique explicitly mentioned where you compare the outputs of different implementations (e.g., multiple SQL engines, JavaScript interpreters) on the same inputs. Discrepancies point to potential bugs.
* **Diversity in Team Construction:** Beyond diverse test *inputs*, diversity in the development *team* (e.g., backgrounds, experiences, abilities) is crucial for identifying a broader range of requirements, potential failure modes, and even business opportunities that a homogenous team might miss.
* **V-Diagram Dynamics:** The V-Diagram isn't static. Requirements and design activities *generate expectations* (oracles) for testing. Conversely, testing activities *generate knowledge* about the system and its context, which should feed back to refine requirements and future designs.

## 5. Reliability Engineering: Beyond Simple Fault-Failure Models

Classical reliability engineering often tracked pre-release faults to predict post-release failures, sometimes using reliability growth curves. However, this view is often too simplistic.

* **Fenton & Neil's Critique:** Empirical data shows a poor correlation between pre-release faults and post-release failures. A system might have many faults found in testing but few failures in operation, or vice-versa. The simple model assumes faults directly predict failures.
* **Complex Causal Models:** Failures are influenced by more than just latent faults. Factors include:
    * Actual operational usage (if no one uses the faulty feature, it won't fail).
    * Testing effort (no testing finds no faults).
    * Design effort and complexity.
    * Defects introduced during development.
* **Management Decision Tools:** These richer causal models (often represented as Bayesian networks) allow for "what-if" analysis. Managers can explore trade-offs: e.g., "To reduce operational failures without increasing testing, we might need to invest more in design or reduce complexity". The goal shifts from simple prediction to informed decision-making. Subject matter expertise can be surprisingly effective in building these causal models, even without extensive project data.

## 6. The Evolving Role of the Software Engineer

The advent of powerful LLMs raises questions about the future of SE roles.

* **LLM Strengths & Weaknesses:** LLMs excel at common, well-documented tasks (e.g., generating boilerplate code, web components) trained from vast datasets of human examples. They struggle with novel problems, complex decision-making involving trade-offs (multi-objective optimization), or tasks where optimal human solutions aren't known or documented. Human rationality often involves iterative exploration, feedback, and reflection – processes not inherent in current large pre-trained models.
* **Beyond Coding:** Empirical studies show that professional programmers spend a minority of their time actually coding. Much time is spent on requirements analysis, design reflection, communication, learning, debugging, and understanding the system – building knowledge.
* **Future Skills:** If coding itself becomes increasingly automated, the value shifts to the uniquely human aspects: understanding context, making trade-off decisions, ensuring quality, defining requirements, managing complexity, and critically evaluating AI-generated outputs. The role evolves from "coder" to "decision-maker," "quality assurer," and "system architect".

## 7. Communication, Cognition, and SE

* **The Power of Poor Communication:** Language is an imperfect, narrow channel for conveying complex thoughts. The inherent need to interpret, clarify, question, and repair distorted signals is arguably what drives critical thinking, reflection, science, and engineering. Testing and debugging are manifestations of this reflective process.



## Review


1.	Explain the typical cost-benefit trade-off when choosing between black-box, white-box, and formal methods for testing. Why aren't formal methods used for all components?
2.	Describe the four typical phases in the lifecycle of a shared SE data repository used for research. Why might using data from the "graveyard" phase be problematic?
3.	What is the "labeling bottleneck" in applying AI/ML to SE problems, and how do Active Learning approaches attempt to address it?
4.	What does the acronym VITAL stand for, and what core principle regarding AI/SE systems does it advocate?
5.	According to Fenton & Neil's critique, why is the simple causal model "pre-release faults predict post-release failures" often inaccurate? List at least two other factors that influence post-release failures.
6.	How can the richer causal models proposed by reliability engineers (like Fenton & Neil's) be used as management decision tools, rather than just for prediction?
7.	How does the V-Diagram represent a dynamic process, specifically regarding the relationship between requirements definition and testing activities?
8.	Considering the potential automation capabilities of LLMs, how might the role and required skills of a software engineer evolve in the future, moving beyond just coding?


