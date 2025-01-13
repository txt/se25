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
    href="/LICENSE.md"><img 
    src="https://img.shields.io/badge/(c)%20Tim%20Menzies,%202025-%234b4b4b?style=for-the-badge&logoColor=white"> </a>
    <br>&nbsp;<br>
    <img width=200 src="/img/banner2.png">
</p>
 <h1 align="center">:cyclone:&nbsp;CSC510: Software Engineering<br>NC&nbsp;State, Spring&nbsp;'25</h1>
      
 

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

### Example 4: Agile might not matter

- Hardware-Software Co-Design:
  * Example from a Chinese company: Software teams aligning with slower hardware development cycles.
  * Implication: Agile principles dumped to fixed hardware timelines.

### Example 5: Technical debt matters: the Cobol Story

- 90% of Fortune 500 business systems are still supported by COBOL.
- A 2020 Reuters report estimated that 43% of banking systems still use COBOL.
- COBOL also powers an estimated 220 billion lines of code, with 5 billion new lines added annually, mainly in specific industries.
- Commonwealth Bank of Australia,  replaced its core banking platform in 2012. The job ultimately took five years and cost more than 1 billion Australian dollars ($749.9 million).
- COBOL is indispensable but replacing it is fraught with significant challenges due to its deep integration in legacy systems.
  * In 2018, TSB's migration of a billion customer records led to outages, wrong account balances, and cross-account visibility.
  * Total costs: 330M pounds for migration + 49.1M pounds lost to fraud.
  * The bank faced several days of downtime and reputational damage.

### Example 6: who knows where the time goes?

Time in project (Fred Brooks, 1976)
- A third of the time is spent planning.
- A sixth of the time is spent coding.
- A quarter of the time is spent testing (unit testing).
- A quarter of the time is spent integrating code with other components or systems.

A more modern view (Long et al.) - all phases have parts:
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
