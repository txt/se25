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


Here are the questions in Markdown format:


# Software Design Principles Review Questions


## 1. Single Responsibility Principle (SRP)


The following code fragment violates the Single Responsibility Principle:


```java
class UserManager {
    public void createUser(User user) {
        // Logic to create a user
    }
    
    public void sendWelcomeEmail(User user) {
        // Logic to send a welcome email
    }
    
    public void generateUserReport() {
        // Logic to generate a user report
    }
}
```


Define the Single Responsibility Principle. Explain how this code violates that principle. Propose a fix that adheres to the SRP.


## 2. Open-Closed Principle (OCP)


The following code fragment violates the Open-Closed Principle:


```java
class Shape {
    private String type;


    public double calculateArea() {
        if (type.equals("circle")) {
            // Calculate circle area
        } else if (type.equals("square")) {
            // Calculate square area
        }
        return 0;
    }
}
```


Define the Open-Closed Principle. Show how this code violates that principle. Propose a fix that adheres to the OCP.


## 3. Liskov Substitution Principle (LSP)


The following code fragment violates the Liskov Substitution Principle:


```java
class Rectangle {
    protected int width;
    protected int height;


    public void setWidth(int width) {
        this.width = width;
    }


    public void setHeight(int height) {
        this.height = height;
    }


    public int getArea() {
        return width * height;
    }
}


class Square extends Rectangle {
    @Override
    public void setWidth(int width) {
        super.setWidth(width);
        super.setHeight(width);
    }


    @Override
    public void setHeight(int height) {
        super.setHeight(height);
        super.setWidth(height);
    }
}
```


Define the Liskov Substitution Principle. Explain how this code violates that principle. Propose a fix that adheres to the LSP.


## 4. Interface Segregation Principle (ISP)


The following code fragment violates the Interface Segregation Principle:


```java
interface Worker {
    void work();
    void eat();
    void sleep();
}


class Human implements Worker {
    public void work() { /* ... */ }
    public void eat() { /* ... */ }
    public void sleep() { /* ... */ }
}


class Robot implements Worker {
    public void work() { /* ... */ }
    public void eat() { throw new UnsupportedOperationException(); }
    public void sleep() { throw new UnsupportedOperationException(); }
}
```


Define the Interface Segregation Principle. Show how this code violates that principle. Propose a fix that adheres to the ISP.


## 5. Dependency Inversion Principle (DIP)


The following code fragment violates the Dependency Inversion Principle:


```java
class LightBulb {
    public void turnOn() {
        // Turn on the light bulb
    }


    public void turnOff() {
        // Turn off the light bulb
    }
}


class Switch {
    private LightBulb bulb;


    public Switch() {
        bulb = new LightBulb();
    }


    public void operate() {
        // Switch logic to turn bulb on or off
    }
}
```


Define the Dependency Inversion Principle. Explain how this code violates that principle. Propose a fix that adheres to the DIP.


