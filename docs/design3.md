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
      



# Answers to the Design2 Review Questions


Here are the answers to the questions, using Python code examples:

## 1. Single Responsibility Principle (SRP)

Definition: The Single Responsibility Principle states that a class should have only one reason to change, meaning it should have only one job or responsibility.

Violation: The `UserManager` class violates SRP because it's responsible for user creation, email sending, and report generation. These are three distinct responsibilities that could change for different reasons.

Proposed Fix:

```python
class UserManager:
    def create_user(self, user):
        # Logic to create a user
        pass

class EmailService:
    def send_welcome_email(self, user):
        # Logic to send a welcome email
        pass

class ReportGenerator:
    def generate_user_report(self):
        # Logic to generate a user report
        pass
```

This solution separates the responsibilities into three distinct classes, each with a single reason to change.

## 2. Open-Closed Principle (OCP)

Definition: The Open-Closed Principle states that software entities (classes, modules, functions, etc.) should be open for extension but closed for modification.

Violation: The `Shape` class violates OCP because adding a new shape type requires modifying the existing `calculate_area` method.

Proposed Fix:

```python
from abc import ABC, abstractmethod
import math

class Shape(ABC):
    @abstractmethod
    def calculate_area(self):
        pass

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def calculate_area(self):
        return math.pi * self.radius ** 2

class Square(Shape):
    def __init__(self, side):
        self.side = side

    def calculate_area(self):
        return self.side ** 2
```

This solution allows for new shapes to be added by creating new classes that inherit from `Shape`, without modifying existing code.

## 3. Liskov Substitution Principle (LSP)

Definition: The Liskov Substitution Principle states that objects of a superclass should be replaceable with objects of its subclasses without affecting the correctness of the program.

Violation: The `Square` class violates LSP because it changes the behavior of `set_width` and `set_height` methods inherited from `Rectangle`. A `Square` cannot be used interchangeably with a `Rectangle`.

Proposed Fix:

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def get_area(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def set_width(self, width):
        self.width = width

    def set_height(self, height):
        self.height = height

    def get_area(self):
        return self.width * self.height

class Square(Shape):
    def __init__(self, side):
        self.side = side

    def set_side(self, side):
        self.side = side

    def get_area(self):
        return self.side ** 2
```

This solution removes the inheritance relationship and treats `Square` and `Rectangle` as separate implementations of a `Shape` abstract base class.

## 4. Interface Segregation Principle (ISP)

Definition: The Interface Segregation Principle states that clients should not be forced to depend on interfaces they do not use.

Violation: The `Worker` interface violates ISP because the `Robot` class is forced to implement `eat()` and `sleep()` methods it doesn't need.

Proposed Fix:

```python
from abc import ABC, abstractmethod

class Workable(ABC):
    @abstractmethod
    def work(self):
        pass

class Eatable(ABC):
    @abstractmethod
    def eat(self):
        pass

class Sleepable(ABC):
    @abstractmethod
    def sleep(self):
        pass

class Human(Workable, Eatable, Sleepable):
    def work(self):
        # Implementation
        pass

    def eat(self):
        # Implementation
        pass

    def sleep(self):
        # Implementation
        pass

class Robot(Workable):
    def work(self):
        # Implementation
        pass
```

This solution splits the `Worker` interface into smaller, more specific interfaces, allowing classes to implement only the methods they need.

### 5. Dependency Inversion Principle (DIP)

The Dependency Inversion Principle (DIP) states that high-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details; details should depend on abstractions[1].

This code violates DIP because the `UserRepository` class (high-level module) directly depends on the `MySQLDatabase` class (low-level module). This creates tight coupling between the classes, making the system less flexible and harder to maintain.

To fix this and adhere to DIP, we can introduce an abstraction layer:

```python
from abc import ABC, abstractmethod

class Database(ABC):
    @abstractmethod
    def connect(self):
        pass

    @abstractmethod
    def execute_query(self, query):
        pass

class MySQLDatabase(Database):
    def connect(self):
        # Connect to MySQL database
        pass

    def execute_query(self, query):
        # Execute SQL query
        pass

class UserRepository:
    def __init__(self, database: Database):
        self.database = database

    def save_user(self, user):
        query = f"INSERT INTO users (name, email) VALUES ('{user.name}', '{user.email}')"
        self.database.connect()
        self.database.execute_query(query)

class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email
```

This solution introduces an abstract `Database` class that both `UserRepository` and `MySQLDatabase` depend on[1]. Now, `UserRepository` is not tied to a specific database implementation, making it easier to switch databases or mock them for testing[5]. This approach creates a more flexible and maintainable system, adhering to the Dependency Inversion Principle.

Citations:
[1] https://www.baeldung.com/cs/dip
[2] https://stackify.com/dependency-inversion-principle/
[3] https://en.wikipedia.org/wiki/Dependency_inversion_principle
[4] https://www.youtube.com/watch?v=9oHY5TllWaU
[5] https://blog.logrocket.com/dependency-inversion-principle/
[6] https://www.reddit.com/r/learnprogramming/comments/ye18fm/what_exactly_is_dependency_inversion/
