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


## Case Studies: Industry Examples


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


