asdas

# Mini-review jan 17

|when| what|
|----|-----|
|11:30 | open moodle, struggle to work out how to download html of student responses |
| 11:37 | pre-prompting. hello chat gpt. here are the questions. how would you answer them|
| 11:40 | load student html, ask [Prompt1](prompt1). Get [Response1](#response1) and [Response2](response2) |
| 11:45 | start typing mitigations for students |
| 12:01 | starting verification. read 15 responses at random| 
| 12:07 | realized i cannot sumamrize the student responses, unless i'd structured the input questions in much greater detail. so i can't even judge LLM effectiveness since it is doing something I can't |
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

![](/img/Specifications.png])


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




