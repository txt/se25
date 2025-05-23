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
      



# Security 101

## Glossary (words to watch for)

- Practices
  - Static Application Security Testing (SAST)
  - Threat Modeling
  - Secure Code Review
  - Dependency Scanning
  - Code Signing 
  - Access Control
  - Security Audits
  - Secure Programming Language Adoption 

- Tools
  - SonarQube
  - Checkmarx
  - OWASP Threat Dragon
  - Dependabot
  - Snyk
  - GPG
  - SSH Keys
  - Terraform
  - Ansible

- Concepts
  - CI/CD Pipeline
  - Design Phase
  - Peer Review
  - Third-Party Component Management
  - Vendor Assessment
  - Audit Logging
  - Role-Based Access Control (RBAC)
  - Security Assessment
  - Memory Safety

- Metrics
  - Vulnerabilities Detected
  - Vulnerabilities Resolved
  - Codebase Coverage
  - Frequency of Threat Modeling
  - Security Incidents
  - Time to Patch
  - Unauthorized Access Attempts
  - Access Control Violations
  - Security Audit Feedback


## Guidelines

| Why | How (Process) | What (Resources) | Metrics |
| ----- | ----- | ----- | ----- |
| **To identify and mitigate security vulnerabilities early in the development process.** | \- **Implement Static Application Security Testing (SAST):** Integrate SAST tools into the CI/CD pipeline to automatically scan code for vulnerabilities during development. <br>\- **Conduct Threat Modeling:** Perform threat modeling sessions during the design phase to anticipate potential security threats and design countermeasures. <br>\-- **Perform Secure Code Reviews:** Establish a process for regular peer reviews [focusing on security aspects of the code](#secure-code-reviews-a-developers-guide). |<br> \- SAST tools (e.g., [SonarQube](https://imgix.datadoghq.com/img/blog/datadog-sonarqube-integration/sonarqube-dashboard.jpg?auto=format&fit=max&w=847&dpr=2), Checkmarx).<br> \- Threat modeling frameworks (e.g., [OWASP Threat Dragon](https://christian-schneider.net/slides/DEF-CON-2020-Threagile.pdf)).<br> \- Secure coding guidelines and checklists. |<br> **Internal Metrics:**<br> \- Number of vulnerabilities detected and resolved during development.<br> \- Percentage of codebase covered by SAST scans.<br> \- Frequency and effectiveness of threat modeling sessions.<hr> **External Metrics:**<br> \- Reduction in security incidents post-deployment.<br> \- Compliance with industry security standards and regulations. |
| **To ensure secure management of [third-party components and dependencies](https://dl.acm.org/doi/pdf/10.1145/3714464).** |<br> \- **Implement Dependency Scanning:** Use automated tools to scan for vulnerabilities in third-party libraries and dependencies.<br> \- **Maintain an Updated Inventory:** Keep an up-to-date inventory of all third-party components used in the project.<br> **Establish Vendor Assessment Procedures:** Evaluate the security practices of third-party vendors before integration. |<br> \- Dependency scanning tools (e.g., Dependabot, Snyk).<br> \- Inventory management systems.<br> \- Vendor assessment frameworks and questionnaires. |<br> **Internal Metrics:**<br> \- Number of vulnerabilities identified in dependencies.<br> \- Time taken to update or patch vulnerable components.<br> \- Percentage of third-party components with known vulnerabilities.<hr> **External Metrics:**<br> \- Compliance with supply chain security requirements.<br> \- Feedback from security audits regarding third-party component management. |
| **To detect and prevent malicious commits in the codebase.** |<br> \- **Implement Multi-Factor Authentication (MFA):** Require MFA for all code repository accesses to ensure that only authorized personnel can make changes.<br> \- **Enforce Code Signing:** Mandate that all commits are signed with verified cryptographic keys to ensure authenticity.<br> \- **Conduct Regular Audits:** Perform periodic audits of commit histories to identify and investigate suspicious activities. |<br> \- MFA tools (e.g., hardware tokens, authenticator apps).<br> \- GPG or SSH keys for commit signing.<br> \- Audit logging systems integrated with version control platforms. |<br> **Internal Metrics:**<br> \- Number of unsigned or improperly signed commits detected.<br> \- Frequency of unauthorized access attempts to repositories.<br> \- Time taken to detect and respond to suspicious commit activities.<hr>**External Metrics:**<br> \- Reduction in security breaches due to compromised code.<br> \- Increased stakeholder confidence in code integrity. |
| **To secure the build and deployment infrastructure against potential threats.** |<br> \- **Implement Infrastructure as Code (IaC):** Define and manage infrastructure using code to ensure consistency and enable automated security checks.<br> \- **Enforce Access Controls:** Restrict access to build and deployment systems based on the principle of least privilege.<br> \- **Conduct Regular Security Assessments:** Perform vulnerability assessments and penetration testing on the build and deployment pipelines. |<br> \- IaC tools (e.g., Terraform, Ansible).<br> \- Role-based access control (RBAC) systems.<br> \- Security assessment tools and services. |<br> \- **Internal Metrics:**<br> \- Number of vulnerabilities identified and remediated in the build pipeline.<br> \- Frequency of access control policy violations.<br> \- Time taken to deploy security patches to infrastructure.<hr> **External Metrics:**<br> \- Compliance with deployment security standards.<br> \- Reduction in incidents related to deployment infrastructure. |
| **To reduce entire classes of vulnerabilities at scale.** |<br> \- **Adopt Safer Programming Languages:** Transition to programming languages that inherently reduce certain types of vulnerabilities (e.g., Rust for [memory safety](https://www.youtube.com/watch?v=FSVnN6-xr9k)).<br> \- **Mandate Secure Coding Frameworks:** Require the use of frameworks and libraries that enforce security best practices.<br> \- **Provide Developer Training:** Offer regular training sessions focused on secure coding practices and common vulnerability mitigation. |<br> \- Resources for learning and adopting safer programming languages.<br> \- Secure coding frameworks and libraries.<br> \- Training materials and programs on secure coding. |<br> **Internal Metrics:**<br> \- Reduction in the number of specific vulnerability types (e.g., buffer overflows) in the codebase.<br> \- Percentage of developers who have completed security training.<br> \- Adoption rate of secure coding frameworks.<hr>**External Metrics:**<br> \- Decrease in security incidents reported by end-users.<br> \- Improved compliance with security certifications and standards. |
| **To foster a company culture conducive to securing the software supply chain.** |<br> \- **Establish Security Champions:** Designate team members as security advocates to promote best practices within development teams.<br> \- **Incentivize Secure Development:** Implement reward systems for teams that consistently adhere to security protocols.<br> \- **Encourage Open Communication:** Create channels for employees to report security concerns without fear of retribution. |<br> \- Security training programs and workshops.<br> \- Communication platforms for reporting and discussing security issues.<br> \- Recognition and reward systems for secure development practices. |<br> **Internal Metrics:**<br> \- Employee participation rates in security programs.<br> \- Number of security issues reported internally.<br> \- Frequency of security-related discussions in team meetings.<hr> **External Metrics:**<br> \- Enhanced reputation for security among clients and partners.<br> \- Reduction in security incidents originating from internal practices. |


```
@misc{nordlayer_security_practices,
    author = {NordLayer},
    title  = {Software Development Security Best Practices},
    year   = {2023},
    howpublished = {url{https://nordlayer.com/blog/software-development-security-best-practices/}},
    note  = {Accessed: 2025-01-11} }

@article{arxiv_secure_supply_chain,
    author  = {Anonymous},
    title   = {S3C2 Summit 2023-11: Industry Secure Supply Chain Summit},
    year    = {2024},
    month   = {August},
    journal = {arXiv preprint arXiv:2408.16529},
    url     = {https://arxiv.org/pdf/2408.16529},
    note    = {Accessed: 2025-01-11} }
```

## Secure Code Reviews: A Developer's Guide

### Preparing for Secure Code Reviews

1. **Size of the Code Change** – Keep pull requests small and focused to simplify review and reduce the chance of missing issues.
2. **Documentation** – Include clear descriptions of what changed and why. This helps reviewers follow the logic and spot flaws.
3. **Testing** – Ensure unit and security tests are in place and passing. Test coverage builds trust in the change.
4. **Formatting and Linting** – Use automated tools to enforce consistent style and catch basic issues early.
5. **Static Analysis** – Run static analysis and security scans before review to catch common problems automatically.
6. **Shift Left** – Integrate security early—during development—not just before deployment.

### 10-Point Checklist for Code Security Flaws

1. **Input Validation Issues** – always validate and sanitize user inputs to prevent injection and malformed data errors.  
2. **Authentication and Authorization Flaws** – enforce strong authentication and limit access based on roles or permissions.  
3. **Data Encryption and Secure Communication** – use HTTPS and encrypt sensitive data both in transit and at rest.  
4. **Exception Handling and Logging** – avoid exposing stack traces or secrets in errors or logs. Secure your logs.  
5. **Dependency Management** – regularly update third-party libraries and remove unused or risky packages.  
6. **API and Integration Points** – validate all API input/output, secure API keys, and limit API exposure.  
7. **CSRF Protections** – protect state-changing actions with CSRF tokens and confirm user intent.  
8. **Server-Side Code Execution** – avoid executing user-controlled input on the server without strict validation.  
9. **Business Logic Errors** – review logic flows and edge cases to avoid exploitable behavior.  
10. **Code Quality and Best Practices** – write clean, modular, and well-documented code to reduce hidden risks.  

## After the review

- Track security bugs over time to improve processes and prioritize fixes.
- Balancing Security and Functionality: Security should support, not block, functionality. Work with teams to make protection practical.

## Review Questions

1. What is the primary goal of integrating Static Application Security Testing (SAST) into the CI/CD pipeline?
2. Name two SAST tools mentioned in the document and describe their general use.
3. At what stage of the software development lifecycle should threat modeling ideally be performed? Why? 
4. What is the purpose of conducting secure code reviews during development?
5. What types of metrics are used to evaluate the effectiveness of SAST?
6. What internal metrics are suggested for assessing secure coding practices?
 
 

