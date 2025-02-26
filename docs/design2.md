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
      



# Design Principles

## Glossary

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


## Review Questions

### 1. Single Responsibility Principle (SRP)

The following code fragment violates the Single Responsibility Principle:

```python
class UserManager:
    def create_user(self, user):
        # Logic to create a user
        pass
    
    def send_welcome_email(self, user):
        # Logic to send a welcome email
        pass
    
    def generate_user_report(self):
        # Logic to generate a user report
        pass
```

Define the Single Responsibility Principle. Explain how this code violates that principle. Propose a fix that adheres to the SRP.

Hint: are our UserManagers running more than one servce?

### 2. Open-Closed Principle (OCP)

The following code fragment violates the Open-Closed Principle:

```python
class Shape:
    def __init__(self, shape_type):
        self.type = shape_type

    def calculate_area(self):
        if self.type == "circle":
            # Calculate circle area
            pass
        elif self.type == "square":
            # Calculate square area
            pass
        return 0
```

Define the Open-Closed Principle. Show how this code violates that principle. Propose a fix that adheres to the OCP.

Hint: Are Circle and Square subclasses of Shape?

### 3. Liskov Substitution Principle (LSP)

The following code fragment violates the Liskov Substitution Principle:

```python
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def set_width(self, width):
        self.width = width

    def set_height(self, height):
        self.height = height

    def get_area(self):
        return self.width * self.height

class Square(Rectangle):
    def set_width(self, width):
        super().set_width(width)
        super().set_height(width)

    def set_height(self, height):
        super().set_height(height)
        super().set_width(height)
```

Define the Liskov Substitution Principle. Explain how this code violates that principle. Propose a fix that adheres to the LSP.

Hint: What is the difference between Squares and Rectangles?

### 4. Interface Segregation Principle (ISP)

The following code fragment violates the Interface Segregation Principle:

```python
from abc import ABC, abstractmethod

class Worker(ABC):
    @abstractmethod
    def work(self):
        pass

    @abstractmethod
    def eat(self):
        pass

    @abstractmethod
    def sleep(self):
        pass

class Human(Worker):
    def work(self):
        # Implementation
        pass

    def eat(self):
        # Implementation
        pass

    def sleep(self):
        # Implementation
        pass

class Robot(Worker):
    def work(self):
        # Implementation
        pass

    def eat(self):
        raise NotImplementedError("Robots don't eat")

    def sleep(self):
        raise NotImplementedError("Robots don't sleep")
```

Define the Interface Segregation Principle. Show how this code violates that principle. Propose a fix that adheres to the ISP.

Hint: Robts work all night.

I apologize for the confusion. Here's a new question for the Dependency Inversion Principle, without the answer:

### 5. Dependency Inversion Principle (DIP)

The following code fragment violates the Dependency Inversion Principle:

```python
class MySQLDatabase:
    def connect(self):
        # Connect to MySQL database
        pass

    def execute_query(self, query):
        # Execute SQL query
        pass

class UserRepository:
    def __init__(self):
        self.database = MySQLDatabase()

    def save_user(self, user):
        query = f"INSERT INTO users (name, email) VALUES ('{user.name}', '{user.email}')"
        self.database.connect()
        self.database.execute_query(query)

class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email
```

Define the Dependency Inversion Principle. Explain how this code violates that principle. Propose a fix that adheres to the DIP.

Hint: will we always be using MySql in the future?

-----
And for those who read this far: [answers](/docs/design3.md)
