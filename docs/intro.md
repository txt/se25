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
      



## Table of Contents
1. [Corrections](#corrections)
2. [Introductory Terms](#intro-to-se-jan8-2025)
3. [Summary of Lecture](#summary-of-lecture)
4. [The Times They Are A-Changing](#the-times-they-are-a-changing)
5. [Case Studies: Industry Examples](#case-studies-industry-examples)
6. [War Stories](#war-stories-from-lecturer)
7. [Glossary of Terms](#glossary-of-terms)
8. [Self-Study Questions](#self-study)


      
 


# Intro to SE (Jan'8, 2025)


Corrections: 
- I said process, product, personnel. 
- Correct terms, according to Fenton,  are process, product, resources.


```
@inproceedings{fenton2000software,
  title={Software metrics: roadmap},
  author={Fenton, Norman E. and Neil, Martin},
  booktitle={Proceedings of the Conference on the Future of Software Engineering},
  pages={357--370},
  year={2000},
  organization={ACM}
}
```


| **Term**          | **Explanation**                                                                                      | **Examples**                                                                                                                                             |
|--------------------|------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Process**        | - Methods and workflows. <br> - "How" tasks are achieved.                                            | - SAST integration.<br> - Threat modeling.<br> - Code reviews.<br> - MFA enforcement.<br> - Dependency scanning.<br> - Using Bayesian networks for causal modeling to predict defects.<br> - GQM (Goal-Question Metric) frameworks for metrics alignment. |
| **Resources**      | - Inputs/tools used in processes. <br> - "What" enables tasks.                                       | - SAST tools (e.g., SonarQube).<br> - Threat modeling tools (e.g., OWASP Threat Dragon).<br> - Dependency scanners (e.g., Snyk).<br> - Bayesian network tools (e.g., Hugin).<br> - Measurement systems for collecting and managing data (e.g., CMM compliance tools). |
| **Product**        | - Outputs/results of processes. <br> - "What" is produced.                                           | - Secure codebase.<br> - Reduced vulnerabilities.<br> - Secure pipelines.<br> - Improved compliance.<br> - Enhanced security culture.<br> - Risk-aware software quality predictions.<br> - Decision-support models for resource allocation. |
| **Internal Metrics** | - Measures of process efficiency. <br> - Organization-focused performance indicators.               | - Vulnerabilities resolved.<br> - Codebase SAST coverage.<br> - Time to patch.<br> - Secure coding adoption rates.<br> - Number of requirements changes in specification.<br> - Defects detected during testing. |
| **External Metrics** | - Measures of impact/outcomes. <br> - Stakeholder and compliance-focused results.                   | - Reduced post-deployment incidents.<br> - Compliance with security standards.<br> - Stakeholder confidence.<br> - External audit feedback.<br> - Cost-effectiveness of testing.<br> - Stability and reliability of delivered products. |


### Aside: what is Bayes Net


Fenton lurvs his bayes nets


![image](https://github.com/user-attachments/assets/9fb746d8-59a0-4c31-beab-b61a33bf2d2e)


Connected distributions. Tweaking any will cause ripples that update the distributions up and downstream


- First proposed decades ago
- To this day, remain a highlyexperiemntal technique, not widely used
  
 ![image](https://github.com/user-attachments/assets/373b5f02-ff1e-44f2-b712-20676bf7564b)


## Summary of Lecture


| **Process**                                        | **Resources (Inputs)**                                                                 | **Product (Outputs)**                                                                                           | **Internal Metrics**                                                            | **External Metrics**                                                                  |
|----------------------------------------------------|---------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| Use distributed teams for 24/7 development         | - Online communication tools (e.g., Zoom, Discord).<br>- Collaborative tools (e.g., GitHub).                | - Around-the-clock development with diverse teams.<br>- Continuous updates to software.                        | - Coordination efficiency across time zones.<br>- Communication frequency.      | - Reduction in delivery time.<br>- Satisfaction of international stakeholders.      |
| Balance product, process, and personnel management | - Agile frameworks.<br>- Personnel training programs.<br>- Metrics tracking tools.                     | - High-performing teams.<br>- Improved team retention and cohesion.                                           | - Staff retention rates.<br>- Time spent on team-building activities.           | - Reduced turnover.<br>- Enhanced project deliverables quality.                     |
| Conduct code reviews and integration testing       | - Code review tools (e.g., SonarQube).<br>- Testing frameworks.<br>- Clear documentation standards.        | - Fully integrated and functional software systems.<br>- Improved code quality and reliability.               | - Number of integration errors resolved.<br>- Frequency of code reviews.        | - Fewer integration issues post-deployment.<br>- Stakeholder satisfaction.          |
| Maintain legacy software                           | - COBOL expertise.<br>- Code analysis tools.<br>- Documentation of old systems.                          | - Stable systems with legacy compatibility.<br>- Updated documentation.                                       | - Lines of legacy code refactored.<br>- Time to resolve compatibility issues.   | - Sustained business operations.<br>- Avoidance of system crashes.                  |
| Promote ethical software practices                 | - Ethical training materials.<br>- Compliance standards.<br>- Automated testing for critical systems.     | - Ethically sound, compliant software.<br>- Avoidance of technical debt from rushed implementations.          | - Frequency of ethical training.<br>- Number of compliance violations avoided.  | - Avoidance of legal penalties.<br>- Positive brand reputation.                     |
| Optimize team dependencies                         | - Dependency tracking systems.<br>- Project management software (e.g., Jira).                            | - Minimized delays from inter-team dependencies.<br>- Clear dependency mappings.                              | - Frequency of delayed dependencies.<br>- Time taken to address late deliverables. | - Reduced project delays.<br>- Improved cross-team collaboration.                   |


---


## The Times they are a changing


Internet everywhere (Starlink etc)


- Developers not accessible from around the world (most of which want to work for far less than USA salaries)
- The future: software developed everywhere
- You task: do you know how to manage tesams? Distributes teams?


## Case Studies: Industry Examples (from Participants)


### Example 1: **Integration Challenges**
- **Process:** Complex code integration between distributed teams.
- **Resources:** Version control tools, integration testing suites.
- **Product:** Functional multi-component software system.
- **Internal Metrics:** Number of integration bugs resolved.
- **External Metrics:** Reduction in customer-reported integration issues.


### Example 2: **Team Dependencies**
- **Process:** Dependency management between teams with misaligned schedules.
- **Resources:** Communication tools, dependency-tracking frameworks.
- **Product:** Delayed but eventually aligned multi-team deliverable.
- **Internal Metrics:** Frequency of missed dependency deadlines.
- **External Metrics:** Stakeholder feedback on delivery timelines.


### Example 3: **Open Source Community Conflicts**
- **Process:** Negotiating changes with community contributors.
- **Resources:** Community feedback platforms, version tracking systems.
- **Product:** Partially updated open-source tool with divided userbase.
- **Internal Metrics:** Number of community disputes resolved.
- **External Metrics:** Retention of userbase and contributors.


---


## War Stories (from lecturer)


### Example 0: AI matters, but maybe not in the way people think


- Yes, LLMs have allowed a wider population to build software
  - But for software that matters, you want that?
  - You want anyone to do heart surgery?
- Welcome to the era of massive technical debt, where SE people have to fix the mess created by the masses
  
```
@article{johnson2024ai,
  title={AI Over-Hype: A Dangerous Threat (and How to Fix It)},
  author={Johnson, Brittany and Menzies, Tim},
  journal={IEEE Software},
  volume={41},
  number={6},
  pages={131--138},
  year={2024},
  publisher={IEEE}
}
```


Experiences programmers know programs have bugs
- So we know not to field things, before they are tested.
 


Time in project (Fred Brooks, 1976)
- A third of the time is spent planning.
- A sixth of the time is spent coding.
- A quarter of the time is spent testing (unit testing).
- A quarter of the time is spent integrating code with other components or systems.


![image](https://github.com/user-attachments/assets/1407bde9-547e-4b49-8ac2-141443fc3e72)


A more modern view (Long et al.)- all phases have parts:
   1.  Requirements Analysis,
   2. Architecture & Design,
   3. Coding ,
   4. System Integration
   5. Qualification Testing, and 
   6. Development Test & Evaluation.


A comparsion of views:


![image](https://github.com/user-attachments/assets/e7ef4133-174b-47b6-b34e-e7609c967997)


```
@ARTICLE{Long24tse,
  author={Long, Daniel and Drylie, Scott and Ritschel, Jonathan D. and Koschnick, Clay},
  journal={IEEE Transactions on Software Engineering}, 
  title={An Assessment of Rules of Thumb for Software Phase Management, and the Relationship Between Phase Effort and Schedule Success}, 
  year={2024},
  volume={50},
  number={2},
  pages={209-219},
  keywords={Software;Encoding;Testing;Decision making;Schedules;Costs;Task analysis;Software development;Hotelling;rule of thumb;effort;phasing},
  doi={10.1109/TSE.2023.3339383}}
```


  
### Example 1: Ethics matter: the	Volkswagen Emissions Scandal:
* Software engineers implementing specifications that violated emissions standards.
* Implication: Ethical considerations in software design and implementation.
* ref: https://en.wikipedia.org/wiki/Volkswagen_emissions_scandal


### Example 2: Process matters. The Microsoft study
* Microsoft investigated defect rates in software built by globally distributed teams versus co-located teams.
* They found that the height of the reporting hierarchy (organizational chart) was a predictor of defects.
  * If remote teams communicated only through senior managers (e.g., a high-level executive like Bill Gates), defect rates were higher.
  * When teams reported to lower-level managers with closer oversight, defect rates were lower.


```
@inproceedings{nagappan2008global,
  title={The influence of organizational structure on software quality: An empirical case study},
  author={Nagappan, Nachiappan and Murphy, Brendan and Basili, Victor R.},
  booktitle={Proceedings of the 30th International Conference on Software Engineering},
  pages={521--530},
  year={2008},
  organization={ACM}
}
```


### Example 3: Open Source Governance Matters: the Zephyr story


- Linxx foundation carries dozens of read-time operating systems
- One of these, Zephyr, is getting far more contrinutors than the rest
- Zephyr's organizers attribute this to their open goverance policy
  - so large organizars can still buy in to the project, without domianting it
   - so developers can still contribute, without fear their contributins will be ignore


![Operating System Contributors](https://github.com/user-attachments/assets/1f17d988-8366-4dd7-b812-78648245d55d)


### Example 4: Test-driven development, and agile might not matter


- Hardware-Software Co-Design:
  * Example from a Chinese company: Software teams aligning with slower hardware development cycles.
  * Implication: Agile principles dumped to fixed hardware timelines.


- Maybe much of the benefits we saw when agile/TDD first showed up were die to the new IDEs and increemtnal scripting tools coming on live in the early 2000s


```
@ARTICLE{karac18tse,
  author={Karac, Itir and Turhan, Burak},
  journal={IEEE Software}, 
  title={What Do We (Really) Know about Test-Driven Development?}, 
  year={2018},
  volume={35},
  number={4},
  pages={81-85},
  engineering},
  doi={10.1109/MS.2018.2801554}}
```


### Example 5: Technical debt matters: the Cobol Story


- 90% of Fortune 500 business systems are still supported by COBOL.
- A 2020 Reuters report estimated that 43% of banking systems still use COBOL.
- COBOL also powers an estimated 220 billion lines of code, with 5 billion new lines added annually, mainly in specific industries.
- Commonwealth Bank of Australia,  replaced its core banking platform in 2012. The job ultimately took five years and cost more than 1 billion Australian dollars ($749.9 million).
- COBOL is indispensable but replacing it is fraught with significant challenges due to its deep integration in legacy systems.
  * In 2018, TSB's migration of a billion customer records led to outages, wrong account balances, and cross-account visibility.
  * Total costs: 330M pounds for migration + 49.1M pounds lost to fraud.
  * The bank faced several days of downtime and reputational damage.


### Example 6: Crazy ideas (might) matter


Crazy ideas (Prolog, logic programming) can turn out to be insanely powerful.


WhatsApp: 100 developer, 1 billion users. How?


Erlang. A cool language designed aaround logic programming (Prolog) that was real fast at Switching between lots of tiny conversations


- Erlang processes are tiny
  - Bytes, not kilobytes
  - Creation time (203: less than 3 microseconds for up to 30,000 processes)
  - Compare with Java/C#: 300 microseconds
-  A web server in this language  for 10,000 users is not “one web server with 10,000 users” (like Apache or Jigsaw or all the rest) i
   -  it’s “10,000 web servers with one user each” -     a radicle departure from conventional practise.


https://www.investopedia.com/articles/investing/032515/whatsapp-best-facebook-purchase-ever.asp


Facebook (now Meta Platforms) purchased WhatsApp in 2014 for approximately $19 billion


- at the time, one of the biggest acqustions ever
- surpassed since by e.g. 
 -  Dell's acquisition of EMC in 2016 was valued at $67 billion
 -  Microsoft's acquisition of Activision Blizzard in 2022 for $68.7 billion
  
 
---


 


## Glossary of Terms


### Core Software Engineering Concepts
- **Process**:  
  - Methods and workflows defining "how" tasks are achieved, including methodologies like Agile or Waterfall.
- **Resources**:  
  - Inputs and tools enabling tasks, such as version control systems, testing frameworks, or personnel expertise.
- **Product**:  
  - The outputs or results of software processes, including functional systems, documentation, or reports.
- **Software Life Cycle**:  
  - The stages of software development, from requirements analysis to design, coding, testing, deployment, and maintenance.
- **Internal Metrics**:  
  - Measures of efficiency and performance within the organization, e.g., defect resolution time or code coverage.
- **External Metrics**:  
  - Measures of the impact and outcomes, focusing on stakeholder satisfaction, e.g., compliance with standards or customer feedback.


### Metrics and Measurement
- **GQM (Goal-Question-Metric)**:  
  - A framework linking organizational goals to specific questions and metrics for evaluation.
- **Defect Density**:  
  - The number of defects per unit size of code, used to assess software quality.
- **Mean Time to Repair (MTTR)**:  
  - Average time taken to resolve a defect or issue.
- **Code Coverage**:  
  - The percentage of source code executed during testing, used as a measure of test completeness.
- **Technical Debt**:  
  - The accumulated cost of deferred maintenance, often resulting from rushed or suboptimal code.


### Techniques and Tools
- **Test-Driven Development (TDD)**:  
  - Writing tests before implementing code to ensure quality and adherence to specifications.
- **Continuous Integration (CI)**:  
  - Automating the integration of code changes, typically through frequent builds and tests.
- **Static Analysis**:  
  - Examining code without executing it to find potential issues, such as vulnerabilities or inefficiencies.
- **Bayesian Networks**:  
  - Probabilistic models that represent dependencies and enable inference, e.g., for defect prediction.
- **Version Control**:  
  - Systems for tracking changes in code, enabling collaboration and rollback, e.g., Git or Subversion.


### Team Dynamics and Management
- **Distributed Teams**:  
  - Teams working across multiple locations, often spanning time zones and cultures.
- **Personnel Management**:  
  - Balancing team skills, training, and roles to optimize productivity and collaboration.
- **Stakeholder Management**:  
  - Ensuring stakeholder needs and expectations are met throughout the project lifecycle.
- **Dependency Management**:  
  - Tracking and managing interdependencies between teams, tasks, or components.


## Ethical and Social Considerations
- **Ethical Software Practices**:  
  - Developing software that adheres to legal, societal, and organizational ethics.
- **Volkswagen Emissions Scandal**:  
  - A case of unethical software manipulation to bypass regulatory emissions tests.
- **Open Governance**:  
  - Transparent and inclusive decision-making processes in open-source projects.


### Emerging Trends and Challenges
- **Legacy Software**:  
  - Older software systems still in use but often costly and difficult to maintain.
- **Global Development**:  
  - Software development leveraging teams across the world, often for cost or expertise advantages.
- **Agile Frameworks**:  
  - Iterative and flexible development methodologies prioritizing collaboration and adaptability.
- **Incremental Development**:  
  - Delivering software in smaller, manageable increments rather than a single large release.
- **Technical Debt Management**:  
  - Practices aimed at minimizing the accumulation and impact of technical debt.


## Self-Study


1. **Understanding Metrics**  
   - Explain the difference between internal and external metrics. Provide examples of how each type of metric can influence decision-making in a software project.


2. **Process and Resource Management**  
   - How can balancing process, product, and personnel management improve the success of distributed software teams? 
 
3. **Ethics in Software Engineering**  
   - Discuss the implications of the Volkswagen emissions scandal for software engineering ethics. What practices could have prevented this issue?


4. **Technical Debt and Legacy Systems**  
   - Why is technical debt a significant challenge in modern software engineering? 
     - Use the COBOL case study to illustrate your answer.


5. **Technical Debt and Modern Systems**  
   - Why is technical debt a significant challenge in modern software engineering? 
     - Use recent advances in AI as a  case study to illustrate your answer.   


