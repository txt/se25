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


**Definition:** The Single Responsibility Principle states that a class should have only one reason to change, meaning it should have only one job or responsibility.


**Violation:** This `UserManager` class violates SRP because it's responsible for user creation, email sending, and report generation. These are three distinct responsibilities that could change for different reasons.


**Proposed Fix:**


```java
class UserManager {
    public void createUser(User user) {
        // Logic to create a user
    }
}


class EmailService {
    public void sendWelcomeEmail(User user) {
        // Logic to send a welcome email
    }
}


class ReportGenerator {
    public void generateUserReport() {
        // Logic to generate a user report
    }
}
```


This solution separates the responsibilities into three distinct classes, each with a single reason to change.


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


**Definition:** The Open-Closed Principle states that software entities (classes, modules, functions, etc.) should be open for extension but closed for modification.


**Violation:** This `Shape` class violates OCP because adding a new shape type requires modifying the existing `calculateArea` method.


**Proposed Fix:**


```java
abstract class Shape {
    public abstract double calculateArea();
}


class Circle extends Shape {
    private double radius;


    public double calculateArea() {
        return Math.PI * radius * radius;
    }
}


class Square extends Shape {
    private double side;


    public double calculateArea() {
        return side * side;
    }
}
```


This solution allows for new shapes to be added by creating new classes that extend `Shape`, without modifying existing code.


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


**Definition:** The Liskov Substitution Principle states that objects of a superclass should be replaceable with objects of its subclasses without affecting the correctness of the program.


**Violation:** This code violates LSP because a `Square` cannot be used interchangeably with a `Rectangle`. Setting the width of a `Square` also changes its height, which is not true for a `Rectangle`.


**Proposed Fix:**


```java
interface Shape {
    int getArea();
}


class Rectangle implements Shape {
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


class Square implements Shape {
    private int side;


    public void setSide(int side) {
        this.side = side;
    }


    public int getArea() {
        return side * side;
    }
}
```


This solution removes the inheritance relationship and treats `Square` and `Rectangle` as separate implementations of a `Shape` interface.


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


**Definition:** The Interface Segregation Principle states that clients should not be forced to depend on interfaces they do not use.


**Violation:** This code violates ISP because the `Robot` class is forced to implement `eat()` and `sleep()` methods it doesn't need.


**Proposed Fix:**


```java
interface Workable {
    void work();
}


interface Eatable {
    void eat();
}


interface Sleepable {
    void sleep();
}


class Human implements Workable, Eatable, Sleepable {
    public void work() { /* ... */ }
    public void eat() { /* ... */ }
    public void sleep() { /* ... */ }
}


class Robot implements Workable {
    public void work() { /* ... */ }
}
```


This solution splits the `Worker` interface into smaller, more specific interfaces, allowing classes to implement only the methods they need.


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


**Definition:** The Dependency Inversion Principle states that high-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.


**Violation:** This code violates DIP because the `Switch` class (high-level module) directly depends on the `LightBulb` class (low-level module).


**Proposed Fix:**


```java
interface Switchable {
    void turnOn();
    void turnOff();
}


class LightBulb implements Switchable {
    public void turnOn() {
        // Turn on the light bulb
    }


    public void turnOff() {
        // Turn off the light bulb
    }
}


class Switch {
    private Switchable device;


    public Switch(Switchable device) {
        this.device = device;
    }


    public void operate() {
        // Switch logic to turn device on or off
    }
}
```


This solution introduces an abstraction (`Switchable` interface) that both the high-level `Switch` and low-level `LightBulb` depend on, adhering to the Dependency Inversion Principle.


Citations:
[1] https://www.designgurus.io/blog/essential-software-design-principles-you-should-know-before-the-interview
[2] https://www.scholarhat.com/tutorial/designpatterns/different-types-of-software-design-principles
[3] https://blog.algomaster.io/p/design-principles
[4] https://swimm.io/learn/system-design/6-software-design-principles-used-by-successful-engineers
[5] https://www.spaceo.ca/blog/software-design-principles/
[6] https://www.reddit.com/r/SoftwareEngineering/comments/1ckfong/what_are_the_core_principles_that_helped_you/
[7] https://www.freecodecamp.org/news/solid-design-principles-in-software-development/
[8] https://www.reddit.com/r/cpp_questions/comments/1gyifoz/how_to_learn_about_software_design_principles/


