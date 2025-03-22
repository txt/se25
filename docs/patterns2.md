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
      



Notes from [Chapter 6 of softengbook.org](https://softengbook.org/chapter6), which focuses on **design patterns**:


## Patterns Example (a Timm List)


Lets add a class "Person" to a design.
- What other functionality might that imply
- think RUD + Search + Proxy
  - six common strategies, which can be distributed across architectural layers:


### 🗂 **Data Layer**
- ✨ **Create** — Save a new record to the database
- 📖 **Read** — Load object state from storage
- ✏️ **Update** — Persist changes to existing records
- 🗑 **Delete** — Remove records from storage
- 🔍 **Search** — Query/filter collections of records


### 🧠 **Model Layer**
- ✏️ **Update** — Apply domain logic and validations
- 🧥 **Proxy** — Delay or manage loading related data (lazy loading, virtual proxies)


### 🧑‍💼 **Dialog (Controller/UI) Layer**
- ✨ **Create** — Accept input and initiate creation
- 📖 **Read** — Display retrieved data
- 🔍 **Search** — Send queries or filter requests based on user actions


These operations are often encapsulated in service layers, repositories, or DAO patterns (Data Access Object:  a design pattern used to abstract and encapsulate all interactions with a data source, like a database).


Would I code all the above as classes? Maybe. 
## 🧭 Design Patterns (the usual list)


### ✨ Creational Patterns
- 🏭 **Factory** — factory building
- 🔐 **Singleton** — lock with one key
- 👷 **Builder** — construction worker
- 🧪 **Prototype** — DNA strand


### 🏗 Structural Patterns
- 🔌 **Adapter** — plug adapter
- 🏢 **Facade** — office building front
- 🧥 **Proxy** — disguise mask
- 🎀 **Decorator** — wrapped gift


### 🔁 Behavioral Patterns
- ♟ **Strategy** — chess piece
- 📡 **Observer** — satellite dish
- 🧾 **Template Method** — checklist
- 🧳 **Visitor** — travel bag


## 🧠 Design Patterns: Questions, Definitions, Examples & Answers


1. **What is a design pattern, and how does it differ from a software library or framework?**


   - **Definition:**  
     A design pattern is a **general, reusable solution** to a common problem in software design. It's like a proven blueprint—not code, but a strategy for solving design challenges.


   - **Example:**  
     The Observer pattern allows you to create a subscription mechanism where changes to one object notify multiple dependents—like a stock ticker updating multiple dashboards.


   - **Answer:**  
     A design pattern is a conceptual solution, while a library provides reusable code, and a framework provides the full skeleton of an application. Patterns are **language-agnostic and architectural**, not concrete implementations.


2. **When should the Factory pattern be preferred over direct object instantiation?**


   - **Definition:**  
     The Factory pattern defines an interface for creating objects, but lets subclasses or internal logic decide which class to instantiate.


   - **Example:**  
     A `DocumentFactory` might create different subclasses like `PDFDocument` or `WordDocument` based on file type input, without the caller needing to know the exact type.


   - **Answer:**  
     Use it when the creation logic is complex or when instantiation needs to be **decoupled from usage**, such as when the exact class is unknown until runtime.


3. **How does the Singleton pattern enforce a single instance, and what are its potential drawbacks?**


   - **Definition:**  
     Ensures a class has **only one instance** and provides a global point of access to it.


   - **Example:**  
     A `Logger` class shared across a large application, where consistent configuration and centralized logging are essential.


   - **Answer:**  
     Singleton uses a private constructor and a static method to return the single instance.  
     Drawbacks include global state, difficulty testing, tight coupling, and hidden dependencies.


4. **What role does the Adapter pattern play in integrating legacy or third-party systems?**


   - **Definition:**  
     The Adapter pattern acts as a **wrapper** to make two incompatible interfaces work together.


   - **Example:**  
     Wrapping a legacy XML-based API to behave like a modern JSON-based REST interface, so your code doesn’t need to change.


   - **Answer:**  
     Adapter enables integration without rewriting legacy code by converting one interface into another expected by your system.


5. **In what situations is the Facade pattern especially useful, and how does it affect coupling?**


   - **Definition:**  
     Provides a **simplified interface** to a complex subsystem, hiding its internal complexities.


   - **Example:**  
     A `HomeTheaterFacade` class might wrap `Amplifier`, `DVDPlayer`, and `Projector` into a single `playMovie()` method.


   - **Answer:**  
     Use it to reduce coupling by exposing only what’s needed, making a system easier to use and maintain without exposing inner workings.


6. **Compare the Decorator and Strategy patterns—how do they each promote flexibility?**


   - **Decorator**
     - **Definition:** Adds behavior to individual objects dynamically, without modifying the original class.
     - **Example:** Wrapping a `TextBox` with a `BorderDecorator` or `ScrollDecorator` in a UI.


   - **Strategy**
     - **Definition:** Encapsulates a family of algorithms so they can be swapped interchangeably.
     - **Example:** A `CompressionStrategy` for `Zip` vs `RAR` formats in a file archiver.


   - **Answer:**  
     - Decorator enables flexible feature stacking at runtime.
     - Strategy allows runtime algorithm selection—both use **composition over inheritance** to increase flexibility.


7. **What problems does the Observer pattern solve in event-driven systems?**


   - **Definition:**  
     Defines a **one-to-many relationship** between objects, so when one object changes state, all its observers are notified.


   - **Example:**  
     A `NewsPublisher` notifies all subscribed `NewsReaders` whenever a new article is posted.


   - **Answer:**  
     It decouples the subject from the observers, enabling loosely coupled systems where components react to events without hardcoded dependencies.


8. **How does the Template Method pattern support code reuse across subclasses?**


   - **Definition:**  
     Defines the **skeleton of an algorithm** in a base class but lets subclasses override specific steps.


   - **Example:**  
     A `DataParser` class defines the general parsing process, while `CSVParser` and `XMLParser` override the format-specific logic.


   - **Answer:**  
     Promotes reuse by allowing common behavior to live in a base class while enabling subclass-specific customizations.


9. **Why is the Visitor pattern considered useful for extending behavior across a class hierarchy?**


   - **Definition:**  
     Allows you to **add new operations** to existing class structures without modifying their code.


   - **Example:**  
     A `TaxVisitor` that applies different tax rules to `ClothingItem`, `Electronics`, and `FoodItem` without altering those classes.


   - **Answer:**  
     Useful when you need to perform many unrelated operations across a fixed set of classes. Promotes the open/closed principle.


