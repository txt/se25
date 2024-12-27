  <h1> :cyclone:  csc510: Software Engineering<br>NC State, Spring'25</h1>
  <a name=#top><p>&nbsp;</a><img align=right width=300 src="/img/banner.png">
  &copy;2025 <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="http://timm.fyi">Tim Menzies</a> 
  via  <a href="https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" 
            style="display:inline-block;">CC BY-SA 4.0 <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>
  <hr>
          
  [home](/README.md#top) | [syllabus](docs/syllabus.md) | [groups](groups) | [moodle](moodle) | [discord](discrod)
     
  <hr>
  






# Requirements Engineering (RE) Study Guide


## Overview
Requirements Engineering (RE) is a structured process of defining, documenting, and maintaining software requirements. It ensures that the final system meets user needs and stakeholder expectations. A critical aspect of RE is that it is **considered complete when the requirements are detailed enough to assess the software that will be generated from them**. This often involves creating **test cases** to validate the requirements.


The RE process can be summarized as **Re-elicitation, Analysis, Negotiation, and Modeling (RANM)** – an iterative loop that refines requirements until consensus is reached.


---


## Breakdown of Key Stages


### 1. Re-Elicitation
- **Definition**: Revisiting the process of gathering requirements to clarify ambiguities, gather further details, or confirm previously collected information.
- **Goal**: Ensure completeness and correctness of requirements.
- **Methods**:
  - Stakeholder interviews
  - Surveys and questionnaires
  - Prototyping
- **Further Reading**:
  - *Generative AI for Requirements Engineering: A Systematic Literature Review*  
    [arXiv:2409.06741](https://arxiv.org/abs/2409.06741) – 15 citations


### 2. Analysis
- **Definition**: Evaluating requirements for feasibility, consistency, and potential conflicts.
- **Goal**: Identify missing, conflicting, or ambiguous requirements.
- **Techniques**:
  - [Postit notes](/img/story.jpeg)
  - Data Flow Diagrams (DFD)
  - Dependency Analysis
  - Scenario Analysis
- **Further Reading**:
  - *Requirements Engineering for Artificial Intelligence Systems: A Systematic Literature Review*  
    [arXiv:2212.10693](https://arxiv.org/abs/2212.10693) – 25 citations


### 3. Negotiation
- **Definition**: Resolving conflicts between stakeholders and prioritizing requirements.
- **Goal**: Achieve consensus on system features that align with business and user needs.
- **Key Activities**:
  - Prioritization meetings
  - Conflict resolution workshops
  - Trade-off analysis
- **Further Reading**:
  - *Tailoring Requirements Engineering for Responsible AI*  
    [arXiv:2302.10816](https://arxiv.org/abs/2302.10816) – 10 citations


### 4. Modeling
- **Definition**: Translating finalized requirements into a visual or formal representation of the system.
- **Goal**: Document system behavior and functionality clearly.
- **Common Models**:
  - Use Case Diagrams
  - State Machine Diagrams
  - Entity-Relationship Diagrams (ERD)
- **Further Reading**:
  - *Requirements Engineering for Machine Learning: Perspectives from Data Scientists*  
    [arXiv:1908.04674](https://arxiv.org/abs/1908.04674) – 30 citations


---


## Requirements Validation Through Test Cases
- **Definition**: Test cases are created from requirements to validate that the system behaves as expected.
- **Purpose**: Ensure each requirement can be assessed through direct testing.
- **Example**:
  - **Requirement**: "The system shall allow users to reset their passwords."
  - **Test Case**: "Verify that the user receives a password reset email after submitting a reset request."
- **Benefits**:
  - Uncover missing or vague requirements.
  - Ensure testability – if a requirement cannot produce a test case, it needs re-elicitation or refinement.


---


## Key Concepts
- **Iterative Nature**: The process often loops, revisiting elicitation and analysis based on new insights.
- **Stakeholder Engagement**: Frequent communication with stakeholders ensures alignment and clarity.
- **Conflict Resolution**: Negotiation is crucial to balance competing needs and priorities.
- **Testability**: Requirements must be verifiable through test cases, ensuring the software meets the defined goals.
- **Traceability**: Each requirement should link to test cases and project deliverables.


---


## Study Questions
1. What are the main stages of the RANM process in Requirements Engineering?
2. How does test case creation contribute to the completion of the RE process?
3. Why is re-elicitation necessary during the requirements engineering process?
4. How can modeling techniques improve the clarity and accuracy of system requirements?
5. What methods can be used to resolve conflicts during the negotiation phase of RE?


