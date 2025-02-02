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
      



# Requirements


## Glossary


- **Requirements**
  - Functional Requirements
    - e.g.  User Authentication, Flight Search, Flight Booking , Payment Processing, Booking Cancellation.
  - Non-Functional Requirements
    - e.g. Performance, Availability, Security, Portability, Privacy, Memory Usage, Disk Usage
- **Requirements Engineering**
  - Identification
  - Analysis
  - Specification
  - Validation
- **Techniques for Requirements Specification and Validation**
  - User Stories
  - Use Cases
  - Minimum Viable Product (MVP)
  - A/B Testing


## When

Recall the v-diagram:

- As we approach coding we do the planning required to generate the exepectations
  that let us test.
- As we leave coding, we generate the experience needed to update our planning,
  next time around.

Requirements is pre-code activity where we define what needs to be done

- Requrements engineering works when we can generate tests
- Testing works when it can update requirements

![Requirement](https://github.com/user-attachments/assets/47004fa8-28f2-4d56-94bc-67bb8e0fc037)



## (in)Famous Requirements Failures


Here’s the updated list of famous failures of requirements engineering, now including the Venus rocket mishap, Genesis, and Stardust:


### 1. **Ariane 5 Rocket Explosion (1996)**
The Ariane 5 rocket exploded 37 seconds after launch due to a software error in the inertial reference system. The system reused code from Ariane 4 without accounting for differences in flight dynamics, violating requirements for adaptability and robustness.[^1]


### 2. **London Ambulance Service System Failure (1992)**
A computer-aided dispatch system failed due to poorly gathered and analyzed requirements. The system was unable to handle real-world load conditions, leading to delays in ambulance dispatch and even loss of lives.[^2]


### 3. **Heathrow Terminal 5 Baggage Handling System (2008)**
The baggage handling system at Heathrow's Terminal 5 suffered significant delays and operational issues due to unclear and incomplete requirements. Poor stakeholder involvement resulted in a system that failed to meet operational needs.[^3]


### 4. **Denver International Airport Automated Baggage System (1995)**
The airport’s automated baggage system was plagued by missed deadlines, budget overruns, and operational failures. The root cause was inadequate requirements elicitation and unrealistic assumptions about system complexity.[^4]


### 5. **Mars Climate Orbiter (1999)**
The Mars Climate Orbiter was lost due to a mismatch in units between the spacecraft's software and ground systems. Requirements failed to specify a standard for measurement units, leading to the spacecraft's destruction upon entering the Martian atmosphere.[^5]


### 6. **Venus Rocket Explosion (1962)**
The Mariner 1 Venus probe was destroyed shortly after launch due to a missing hyphen (`-`) in the guidance system's code. This single error caused the rocket to deviate from its path, highlighting the importance of precise requirements and testing.[^6]


### 7. **Genesis Spacecraft (2004)**
NASA’s Genesis spacecraft crashed upon re-entry due to inverted accelerometer sensor orientation. Requirements failed to specify a consistent testing protocol for component integration, resulting in catastrophic failure.[^7]


### 8. **Stardust Spacecraft (2006)**
In contrast to Genesis, the Stardust spacecraft successfully returned its samples from a comet. This success was attributed to improved requirements engineering and lessons learned from Genesis, demonstrating the importance of robust requirements processes.[^8]


[^1]: Lions, Jean-Luc. *Ariane 5 Flight 501 Failure*. European Space Agency, 1996. [Link](https://www.esa.int/esapub/bulletin/bullet89/alloc.html)
[^2]: Finkelstein, A., et al. *London Ambulance Service Report*. University College London, 1993. [Link](https://www.cs.ucl.ac.uk/staff/A.Finkelstein/las.html)
[^3]: House of Commons Transport Committee. *The Opening of Heathrow Terminal 5*. UK Parliament, 2008. [Link](https://publications.parliament.uk/)
[^4]: Montealegre, R., & Keil, M. *De-escalating Failure: Lessons from the Denver International Airport Baggage System*. MIS Quarterly, 2000.
[^5]: Jet Propulsion Laboratory. *Mars Climate Orbiter Mishap Investigation Board Report*. NASA, 1999. [Link](https://mars.nasa.gov/msp98/news/mco990930.html)
[^6]: Chaikin, Andrew. *The Mariner 1 Mishap: A Hyphen in the Wrong Place*. Smithsonian Air and Space Magazine, 2012. [Link](https://www.airspacemag.com/)
[^7]: NASA. *Genesis Mishap Investigation Report*. 2004. [Link](https://www.nasa.gov/)
[^8]: NASA. *Stardust Mission Overview*. [Link](https://stardust.jpl.nasa.gov/)


## Requirement Interactions


### Sample of Functional Requirements Interactions


| Requirement ID              | R1 | R2 | R3 | R4 | R5 | R6 | R7 | R8 | R9 | R10 |
|-----------------------------|----|----|----|----|----|----|----|----|----|-----|
| R1=User Authentication      |    | -  |    |    |    |    |    |    |    |    |
| R2=Flight Search            | +  |    |    |    | +  |    |    |    |    |    |
| R3=Flight Booking           |    |    |    | -  |    | +  |    |    |    |    |
| R4=Passenger Management      |    |    | -  |    |    |    |    |    |    |    |
| R5=Payment Processing        |    | +  |    |    |    |    |    |    | -  |    |
| R6=Booking Cancellation      |    |    | +  |    |    |    |    |    |    |    |
| R7=Flight Status Updates     |    |    |    |    |    |    |    | +  |    |    |
| R8=Seat Selection            |    |    |    |    |    |    | +  |    |    | -  |
| R9=Loyalty Program Integration|    |    |    |    | -  |    |    |    |    |    |
| R10=Multi-language Support   |    |    |    |    |    |    |    | -  |    |    |


### Explanation of Positive Interactions (`+`)


1. **R1 (User Authentication) and R2 (Flight Search):**
   - **Positive Interaction**: Proper authentication enables a personalized flight search experience, allowing for user-specific recommendations.


2. **R2 (Flight Search) and R5 (Payment Processing):**
   - **Positive Interaction**: Efficient flight searches improve the flow into payment processing, reducing friction in completing transactions.


3. **R3 (Flight Booking) and R6 (Booking Cancellation):**
   - **Positive Interaction**: Integrating booking and cancellation systems ensures smooth transaction handling for users needing modifications.


4. **R7 (Flight Status Updates) and R8 (Seat Selection):**
   - **Positive Interaction**: Seat selection systems benefit from live updates to ensure current availability and accurate information.


5. **R9 (Loyalty Program Integration) and R10 (Multi-language Support):**
   - **Positive Interaction**: Multi-language support ensures loyalty programs are accessible and user-friendly for a global audience.


### Explanation of Negative Interactions (`-`)


1. **R1 (User Authentication) and R2 (Flight Search):**
   - **Negative Interaction**: Enforcing strict authentication might delay or complicate quick flight searches for users.


2. **R3 (Flight Booking) and R4 (Passenger Management):**
   - **Negative Interaction**: Booking systems may conflict with passenger management databases if changes aren't synchronized in real-time.


3. **R5 (Payment Processing) and R9 (Loyalty Program Integration):**
   - **Negative Interaction**: Adding loyalty point calculations during payment processing may increase complexity and transaction time.


4. **R8 (Seat Selection) and R10 (Multi-language Support):**
   - **Negative Interaction**: Multi-language support can complicate seat selection interfaces, potentially confusing users with translations.


5. **R9 (Loyalty Program Integration) and R5 (Payment Processing):**
   - **Negative Interaction**: Balancing loyalty points and payment structures could introduce errors or delays in processing payments.


### Sample of NonFunctional Requirements Interactions


|   | A  | C  | I  | M  | P  | Po | R  | S  | Se | U  |
|---|----|----|----|----|----|----|----|----|----|----|
| A=Availability     |    |    |    |    | +  |    | +  | +  |    | -  |
| C=Compliance       |    |    | +  | -  |    |    |    |    | +  |    |
| I=Interoperability |    | +  |   |    | -  | +  |    |    |    |    |
| M=Maintainability  |    | -  |    |    | +  |    | +  |    |    | +  |
| P=Performance      | +  |    | -  | +  |    | +  | -  | +  |    |    |
| Po=Portability     |    |    | +  |    | +  |    |    | +  |    | -  |
| R=Reliability      | +  |    |    | +  | -  |    |    |    |    |    |
| S=Scalability      | +  |    |    |    | +  | +  |    |    |    | -  |
| Se=Security        |    | +  |    | -  |    |    |    |    |    |    |
| U=Usability        | -  |    |    | +  |    | -  |    |    |    |    |


### Explanation of `+` (Positive Interactions)


1. **A (Availability)**:
   - Helps **P (Performance)**: Ensuring availability supports reliable performance under high loads.
   - Helps **R (Reliability)** and **S (Scalability)**: High availability ensures resilience and system growth.


2. **C (Compliance)**:
   - Helps **I (Interoperability)**: Enforcing standards improves system integration.
   - Helps **Se (Security)**: Compliance often enforces security protocols.


3. **I (Interoperability)**:
   - Helps **C (Compliance)**: Facilitates adherence to standards.
   - Helps **Po (Portability)**: Cross-platform functionality boosts interoperability.


4. **M (Maintainability)**:
   - Helps **P (Performance)**: Simplified code allows for better optimizations.
   - Helps **R (Reliability)**: Easier fixes improve reliability.
   - Helps **U (Usability)**: Maintainable systems allow user-friendly updates.


5. **P (Performance)**:
   - Helps **A (Availability)**, **R (Reliability)**, and **S (Scalability)**: Optimized performance ensures stability and scalability.
   - Helps **Po (Portability)**: Supports adaptability across platforms.


6. **Po (Portability)**:
   - Helps **I (Interoperability)**: Portable software integrates well with other systems.
   - Helps **P (Performance)**: Adaptability often requires efficient resource use.
   - Helps **S (Scalability)**: Portability allows scaling across environments.


7. **R (Reliability)**:
   - Helps **A (Availability)** and **P (Performance)**: Reliable systems ensure continuous operation.


8. **S (Scalability)**:
   - Helps **A (Availability)**, **P (Performance)**, and **Po (Portability)**: Scaling ensures systems remain functional across varying demands.


9. **Se (Security)**:
   - Helps **C (Compliance)**: Security measures often align with compliance requirements.


10. **U (Usability)**:
    - Helps **M (Maintainability)**: User-focused designs reduce complexity.


### Explanation of `-` (Negative Interactions)


1. **A (Availability)**:
   - Hurts **U (Usability)**: Ensuring availability may compromise user-friendly maintenance schedules.


2. **C (Compliance)**:
   - Hurts **M (Maintainability)**: Strict compliance can increase system complexity.


3. **I (Interoperability)**:
   - Hurts **P (Performance)**: Supporting multiple systems can reduce efficiency.


4. **M (Maintainability)**:
   - Hurts **C (Compliance)**: Simplifications for maintainability may overlook compliance standards.
   - Hurts **Se (Security)**: Modularization could introduce vulnerabilities.


5. **P (Performance)**:
   - Hurts **I (Interoperability)**: Optimizations might prioritize specific systems.
   - Hurts **R (Reliability)**: Aggressive tuning can risk instability.


6. **Po (Portability)**:
   - Hurts **U (Usability)**: Cross-platform focus can reduce tailored user experiences.


7. **R (Reliability)**:
   - Hurts **P (Performance)**: Prioritizing reliability can slow system performance.


8. **S (Scalability)**:
   - Hurts **U (Usability)**: Scaling can introduce complexity in user interactions.


9. **Se (Security)**:
   - Hurts **M (Maintainability)**: Strong security protocols can hinder ease of maintenance.


10. **U (Usability)**:
    - Hurts **A (Availability)**: Enhancing usability may require downtime for updates.
    - Hurts **Po (Portability)**: Platform-specific usability tweaks can hinder portability.


---


## REview 


## Detailed Questions


1. What are the key activities involved in requirements engineering?
2. What is the difference between functional and non-functional requirements?
3. Can you give examples of non-functional requirements and their impact on system design?
4. How does a Minimum Viable Product (MVP) help in requirements validation?
5. What internal metrics are used to evaluate system resource utilization?
6. How can external metrics like performance, availability, and scalability influence user satisfaction and system success?
7. Why might it be  useful to consider memory and disk usage during requirements analysis?
8. How do tools like A/B testing and user stories help bridge the gap between requirements elicitation and user needs?


## For Friday


1. **What is the key distinction between functional and non-functional requirements?**
   *(Hint: Think about "what the system does" vs. "how the system performs.")*


2. **How does a Minimum Viable Product (MVP) differ from a complete product in terms of requirements?**
   *(Hint: Focus on scope and purpose.)*


3. **What is the difference between internal metrics (e.g., memory usage) and external metrics (e.g., performance) in evaluating system requirements?**
   *(Hint: Consider whether the metric is user-facing or system-focused.)*

_________

## Results from gemini:

How well do the responses align with the key concepts from the lecture?

### Student Response Analysis: Alignment with Key Concepts

**1. Functional vs. Non-Functional Requirements**
- **Functional Requirements:** ✅ **79.6%** of responses correctly identify functional requirements (e.g., *"what the system does"*).
- **Non-Functional Requirements:** ✅ **87.8%** correctly distinguish non-functional requirements (e.g., *"how the system performs"*).

**2. Minimum Viable Product (MVP) vs. Complete Product**
- **MVP:** ✅ **79.6%** correctly describe an MVP as a minimal, testable version of a product.
- **Complete Product:** ✅ **85.7%** distinguish a full product from an MVP, emphasizing completeness and robustness.

**3. Internal vs. External Metrics**
- **Internal Metrics:** ✅ **98.0%** correctly identify internal system metrics (e.g., *memory usage, CPU*).
- **External Metrics:** ⚠️ **73.5%** correctly distinguish external, user-facing metrics (e.g., *response time, availability*).


**Major Misunderstandings and Confusion Patterns**

**1. Functional vs. Non-Functional Requirements**
- ❌ **6.1%** of responses show confusion.
- Likely issue: Mixing *"what the system does"* (functional) with *"how it performs"* (non-functional).

**2. MVP vs. Complete Product**
- ❌ **8.2%** of responses misunderstand MVP.
- Likely issue: Confusing an MVP with a **full but early-stage product** instead of a minimal, testable version.

**3. Internal vs. External Metrics**
- ❌ **2.0%** of responses fail to distinguish between system-focused and user-facing metrics.
- Likely issue: Mixing **internal system behavior** (e.g., memory usage) with **user-facing performance** (e.g., response time).

