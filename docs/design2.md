asdas

# Design Principles

- SOLID
  - Single Responsibility Principle
  - Open-Closed Principle
  - Liskov Substitution Principle
  - Interface Segregation Principle
  - Dependency Inversion Principle
- Design by Contract
- Law of Demeter
- Prefer Composition over Inheritance
- Information Hiding
- Conceptual Integrity
- Cohesion
- Coupling
- Source Code Metrics
  - Lines of Code (LOC)
  - Cyclomatic Complexity
  - Halstead Metrics
  - Maintainability Index
  - Lack of Cohesion in Methods (LCOM)
  - Size Metrics
    - Lines of Code (LOC)
    - Number of Classes
    - Number of Methods per Class
    - Number of Attributes per Class
  - CommitGuru Metrics
    - contains_bug - Indicates whether the commit introduced a bug
    - ns - Number of modified subsystems
    - nd - Number of modified directories
    - nf - Number of modified files
    - entropy - Complexity of changes in the commit
    - la - Lines added
    - ld - Lines deleted
    - lt - Lines in the file before the change
    - ndev - Number of developers that previously modified the files
    - age - Time since the last change to the file
    - nuc - Number of unique committers to the file
    - exp - Developer experience (total past commits)
    - rexp - Recent experience (weighted by recency)
    - sexp - Subsystem experience (commits to the same subsystem)
    - glm_probability - Predicted bug probability using Generalized Linear Model
    - rf_probability - Predicted bug probability using Random Forest model

