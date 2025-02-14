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
      



# **Modeling as an Abstraction Tool**


- **Modeling serves as an abstraction tool, just as modular decomposition does in software engineering.**
- **Design methods helps structure systems in a way that aligns with Parnas’ principles of information hiding and separation of concerns.**
- **A good model ensures modularity, reduces coupling, and makes systems easier to maintain and evolve.**


## Glossary


- Abstraction
    - Modeling
    - Unix Pipes
    - Object-Oriented Design
    - Design Patterns
    - Error Handlers


- Error Handling
    - Try-Catch Mechanism
    - Exception Handling


- Pipes and Filters
    - Modular Decomposition
    - Loose Coupling
    - Encapsulation
    - Text Streams as Interfaces
    - Pipeline Processing
    - Software Composition
    - Command Line Utilities


- Information Hiding
    - Separation of Concerns
    - Internal Function Visibility
    - Encapsulation vs. Information Hiding
    - Loose coupling


- Design Patterns
    - Model-View-Controller (MVC)
    - Composite Design Patterns
    - CRUD (Create, Read, Update, Delete)
    - 3-Tiered Architectures
    - Layered Software Design


## Abstraction


Abstraction  has been applied, successfully, dozens of times in the history of computing


- All these following use the same idea... abstraction


The following list is sorted
  by their memory footprint, largest to smallest:


(+) not covered in this lecture


1. Unix Pipes
2. Object ORiented.
3. Operating systems (+)
4. Virtual machines (+)
5. Container (+)
6. Serverless systems (+)
7. Erlang's trick (+)
8. Design Patterns
     - These are can "just" be a paper design principle
     - They can also be the design guide for  an OO class library.
9. Macros (+)
10. Iterators and error handlers
    - These not the same as the rest
         - Iterators and error handlers are abstraction tricks for programmers are smaller than
         - Implemented and popularized by Barbara Liskov
    - The  rest allow you jump computation around one of more CPUs


## Error handling


Throw a ball into a stadium, wait for what returns while holding a catchers mitt.
Only catch things you know how to handle


```python
def atom(token: str) -> Atom:
    "Numbers become numbers; every other token is a symbol."
    try: return int(token)
    except ValueError:
        try: return float(token)
        except ValueError:
            return token
```


Error handling classes in Python:


```
BaseException
    ├── BaseExceptionGroup
    │   ├── ExceptionGroup
    ├── CancelledError
    ├── Exception
    │   ├── ArithmeticError
    │   │   ├── FloatingPointError
    │   │   ├── OverflowError
    │   │   ├── ZeroDivisionError
    │   ├── AssertionError
    │   ├── AttributeError
    │   ├── BufferError
    │   ├── EOFError
    │   ├── ImportError
    │   │   ├── ModuleNotFoundError
    │   ├── LookupError
    │   │   ├── IndexError
    │   │   ├── KeyError
    │   ├── MemoryError
    │   ├── NameError
    │   │   ├── UnboundLocalError
    │   ├── OSError
    │   │   ├── BlockingIOError
    │   │   ├── ChildProcessError
    │   │   ├── ConnectionError
    │   │   │   ├── BrokenPipeError
    │   │   │   ├── ConnectionAbortedError
    │   │   │   ├── ConnectionRefusedError
    │   │   │   ├── ConnectionResetError
    │   │   ├── FileExistsError
    │   │   ├── FileNotFoundError
    │   │   ├── InterruptedError
    │   │   ├── IsADirectoryError
    │   │   ├── NotADirectoryError
    │   │   ├── PermissionError
    │   │   ├── ProcessLookupError
    │   │   ├── TimeoutError
    │   ├── ReferenceError
    │   ├── RuntimeError
    │   │   ├── NotImplementedError
    │   │   ├── RecursionError
    │   ├── StopIteration
    │   ├── StopAsyncIteration
    │   ├── SyntaxError
    │   │   ├── IndentationError
    │   │   │   ├── TabError
    │   ├── SystemError
    │   ├── TypeError
    │   ├── ValueError
    │   │   ├── UnicodeError
    │   │   │   ├── UnicodeDecodeError
    │   │   │   ├── UnicodeEncodeError
    │   │   │   ├── UnicodeTranslateError
    │   ├── Warning
    │   │   ├── DeprecationWarning
    │   │   ├── PendingDeprecationWarning
    │   │   ├── RuntimeWarning
    │   │   ├── SyntaxWarning
    │   │   ├── UserWarning
    │   │   ├── FutureWarning
    │   │   ├── ImportWarning
    │   │   ├── UnicodeWarning
    │   │   ├── BytesWarning
    │   │   ├── ResourceWarning
    ├── GeneratorExit
    ├── KeyboardInterrupt
    ├── SystemExit
```


# **Pipes and Filters: A Case Study in Information Hiding (Parnas' Principles in Action)**


## **1. Introduction: Pipes as a Radical Shift in Software Design**
When **Ken Thompson** implemented **pipes** in UNIX in **1973**, he was unknowingly **validating** David Parnas’ principles of **information hiding** and **modular decomposition**. 


- Historical note: Parmas' paper came years **after** pipes.


Instead of monolithic programs, **pipes** allowed **small, focused tools** to be combined dynamically at runtime. 


As **Doug McIlroy**, the director of Bell Labs, famously put it:


> *“We should have some ways of coupling programs like garden hose.”*  
> *“Let programmers screw in another segment when it becomes necessary to massage data in another way.”*  
> *“Expect the output of every program to become the input to another, as yet unknown, program. Don’t clutter output with extraneous information.”*  


These quotes highlight a **modular** approach to software:  
1. **Programs should be loosely coupled** (just as Parnas advocated).  
2. **New capabilities should be added incrementally**, without modifying existing programs.  
3. **Each module (program) should hide its implementation details** while exposing a simple, uniform interface (a text stream).  


---


## **2. Pipes as an Example of Information Hiding**
David Parnas, in *“On the Criteria to Be Used in Decomposing Systems into Modules”*, argued that **modules should encapsulate decisions likely to change**. Pipes **directly embody** this principle:


| **Parnas' Principle**            | **How Pipes Implement It** |
|-----------------------------------|----------------------------|
| **Encapsulation** | Each program in a pipeline hides its internal processing from the others. |
| **Loose Coupling** | Programs interact via a **standardized interface (text streams)**, rather than direct function calls. |
| **Minimizing Ripple Effects** | A new filter can be inserted into a pipeline **without modifying** existing programs. |
| **Separation of Concerns** | Each program performs **one function well** and delegates other concerns to different programs. |


### **2.1 Traditional Approach vs. Pipes (Modular Decomposition)**
In a **pre-pipe world**, a text-processing system would be implemented as a **monolithic** program with **hardcoded dependencies** between each stage of processing.


```plaintext
INPUT → Preprocessing → Formatting → Output Handling → PRINTER
```
If **any one part needed a change**, the **entire program had to be modified**.


With **pipes**, each stage is an **independent module**:


```plaintext
INPUT | Preprocessor | Formatter | Output Handler | PRINTER
```
Now, we can **replace or reorder** any module **without affecting the others**.


---


## **3. The Historical Moment: One Night That Changed UNIX**
Ken Thompson’s **overnight implementation of pipes** in **1973** was one of the most transformative moments in software history. Doug McIlroy recalls:


> *“It was clear to everyone, practically minutes after the system came up with pipes working, that it was a wonderful thing. Nobody would ever go back and give that up if they could.”*  
> *“The next day saw an unforgettable orgy of one-liners as everybody joined in the excitement of plumbing.”*


This **instant success** proves the **power of modular design**: when software components are properly abstracted and loosely coupled, **innovation happens organically**.


---


## **4. Pipes and Filters in Action**
Pipes fundamentally changed **how we think about software**. Instead of **applications**, UNIX introduced **tools**—small programs designed to work together dynamically.


### **4.1 Example: Processing Text with UNIX Pipes**
Before pipes, a text formatting system would require a dedicated application.  
With pipes, individual **tools** can be **chained dynamically**:


```bash
nroff files | col | lp
```
- `nroff` – Formats the text (old version of LaTeX).  
- `col` – Adjusts escape sequences to create **column-based text**.  
- `lp` – Sends the output to the **line printer**.  


**Parnas’ Information Hiding Lesson:**  
- `nroff` **doesn’t need to know** where the output goes.  
- `lp` **doesn’t need to know** where the input came from.  
- Each program **hides its internal logic** behind a **stream interface**.  


### **4.2 Example: A More Complex Pipeline**
A full document preparation system using **preprocessors**:


```bash
tbl file-1 file-2 ... | eqn | nroff -ms
```
- `tbl` – Converts **table markup** into nroff-compatible commands.  
- `eqn` – Converts **equation markup** into formatted text.  
- `nroff -ms` – Formats everything into a structured document.  


Again, **each program is oblivious to the implementation details of the others**.


---


## **5. Pipes as a Design Pattern**
### **5.1 The General Pattern: Produce, Translate, Filter, Consume**
Pipes introduce a new paradigm:


```bash
find /usr/bin/ |          # Produce data
sed 's:.*/::'  |          # Translate (strip directory paths)
grep -i '^z'   |          # Filter (select only items starting with "z")
xargs -d '\n' process     # Consume (pass to final processing command)
```
Each program operates **independently**, ensuring **maximum flexibility**.


### **5.2 The Beauty of Language Agnosticism**
> *"Filters inside pipes could be written in any language, by different teams."*


---


## **6. Performance Considerations: When Abstraction Has Costs**
Although **pipes introduce modularity**, they come with **performance trade-offs**:


- **Overhead of process creation** – Each command runs as a separate **process**, which consumes resources.  
- **Streaming latency** – Data must be transferred between processes, sometimes across networks.  
- But  **modern optimizations** (e.g., UNIX process forking, buffer sharing) mitigate these issues.


Pips also implement ``my way or the high way'':


- One way process, no jumping around
- Less suited to Gui envrionments where users can jump to any function in any order.


And pipes have advatnages:


- The operating system knows it can run each aprt of the pipe as a seperate filter.
- Debugging can be easier (just explore each part of the pipe seperately).


---


## **7. The UNIX Philosophy: Abstraction as a Design Principle**
Pipes **exemplify** the UNIX philosophy:


1. **Do one thing well.**  
2. **Write programs to work together.**  
3. **Use text streams as a universal interface.**  


Parnas would **fully endorse** this approach because it maximizes:
- **Modularity** (components are independent).  
- **Flexibility** (pipelines are reconfigurable).  
- **Maintainability** (code changes don’t affect unrelated components).  


---


## **8. Conclusion: Pipes as Cool Information Hiding Mechanism**
The **Pipes and Filters** pattern is a **pure realizations of Parnas' modularity principles**
(cough, just some years earlier):


| **Parnas' Principle**            | **How Pipes Implement It** |
|-----------------------------------|----------------------------|
| **Encapsulation** | Filters hide internal logic from others. |
| **Loose Coupling** | Programs interact via text streams, not direct calls. |
| **Minimizing Ripple Effects** | A new program can be inserted without modifying existing ones. |
| **Separation of Concerns** | Each program does one thing and does it well. |


Pipes **show** that **abstracting system components behind simple, well-defined interfaces** is the key to **scalable, maintainable software**.


> *Pipes weren’t just a technical innovation. They were a **cultural** and **philosophical** shift toward modular, flexible, and extensible software design.*  


---


## **Lessons from Parnas’ Modular Decomposition**


## **1. Introduction**
Modeling in software engineering is fundamentally an **abstraction tool**—it structures complex systems by focusing on **essential details** while **hiding unnecessary complexity**. This aligns with David Parnas’ seminal paper, *["On the Criteria to Be Used in Decomposing Systems into Modules,"](https://dl.acm.org/doi/10.1145/361598.361623)* which emphasizes:


- **Information Hiding** – Grouping related design decisions together while keeping implementation details private.
- **Separation of Concerns** – Ensuring that different modules handle independent aspects of the system.


Object-oriented
and other modeling techniques provide structured ways to **abstract** software components while ensuring **maintainability, flexibility, and scalability**.


---


## **2. Parnas’ Principles and Objects as an Abstraction Mechanism**
Parnas outlined **two competing approaches** to modular decomposition:


1. **Data Flow (Traditional Decomposition)**  
   - Modules are split based on sequential steps in the execution process.  
   - This often results in **high coupling** and **brittle designs**.  


 <img src="https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F5aa541cc-5bce-49d0-9794-02266cba87ed_1738x1000.png">


2. **Object-Oriented (OO) Decomposition**  
   - Modules are structured based on **information hiding** and **responsibility assignment**.  
   - Leads to **loosely coupled**, **easily extendable** systems.


<img src="https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F7f126ade-1690-4705-b8f8-3d8ecd928239_2209x1000.jpeg">


When applied to **modeling**, these principles shape **different types of  diagrams**, enforcing **abstraction and modularity**.


---


## **3. OO as an Abstraction Tool (Inspired by Parnas’ Principles)**  


### **3.1 Structural Abstraction (Class and Package Diagrams)**  
#### **Parnas’ Information Hiding → Encapsulation in Objects**  
- In Parnas’ view, a module should encapsulate details that are **likely to change** together.  
- **Encapsulation** is explicitly represented in **class diagrams** via:
  - **Private attributes** (hiding implementation)
  - **Public methods** (exposing controlled access)
- **Package diagrams** define modular boundaries, ensuring clear separation between components.


#### **Example: Object-Oriented Modular Decomposition ( Class Diagram)**  
```plaintext
+--------------------------------------+
|           PaymentProcessor           |
+--------------------------------------+
| - gateway: PaymentGateway            |
| - logTransaction(tx: Transaction)    |
+--------------------------------------+
| + processPayment(amount: Double)     |
+--------------------------------------+


               ⬇ (depends on)


+--------------------------------------+
|         PaymentGateway (interface)   |
+--------------------------------------+
| + charge(amount: Double)             |
+--------------------------------------+


               ⬇ (implemented by)


+--------------------------------------+
|         StripeGateway                |
+--------------------------------------+
| + charge(amount: Double)             |
+--------------------------------------+


+--------------------------------------+
|         PayPalGateway                |
+--------------------------------------+
| + charge(amount: Double)             |
+--------------------------------------+
```
**Key Takeaways:**


- **Encapsulation:** The `PaymentProcessor` does not depend on `StripeGateway` or `PayPalGateway` directly but on an **abstract interface (`PaymentGateway`)**.
- **Modular Change:** If a new gateway is added, `PaymentProcessor` remains **unchanged**.


---


### **3.2 Behavioral Abstraction (Sequence and State Diagrams)**
#### **Parnas’ “Design for Change” → Defining Clear Responsibilities & Interactions**
- **Sequence diagrams** abstract interactions between key modules, preventing **implementation-dependent** dependencies.
- **State diagrams** abstract the **internal logic** of a system, allowing modular reasoning.


#### **Example: Data Flow Decomposition (Sequence Diagram)**  
```plaintext
User       UI Layer            Backend             Database
 |                |                |                    |
 |  Clicks "Pay"  |                |                    |
 |--------------->|                |                    | 
 |                |  sendPayment() |                    |
 |                |--------------->|                    |
 |                |                | storeTransaction() |
 |                |                |------------------->|     
 |                |                |                    |
```
**Key Takeaways:**


- **Encapsulation:** The **user** does not need to know about the database; it interacts only with the UI.
- **Minimizing Ripple Effects:** The **backend** does not expose its internal implementation; it only provides a `sendPayment()` API.


---


### **3.3 Process Abstraction (Activity and State Diagrams)**
#### **Parnas’ “Minimizing Ripple Effects” → Clear Module Responsibilities**
- **Activity diagrams** abstract workflows, preventing **low-level implementation** from affecting high-level system understanding.
- **State diagrams** abstract **complex behaviors**, ensuring **localized reasoning** without exposing unnecessary details.


#### **Example: Abstracting Compiler Workflow (Activity Diagram)**  
```plaintext
+--------------------------------------+
|          Compiler Pipeline           |
+--------------------------------------+
| 1. Lexical Analysis                  |
| 2. Parsing                            |
| 3. Semantic Analysis                  |
| 4. Code Optimization                  |
| 5. Code Generation                     |
+--------------------------------------+
```
**Key Takeaways:**
- The **compiler pipeline** abstracts implementation details (e.g., tokenization rules, parsing algorithms) from the high-level stages.
- **Modification Isolation:** Changing one phase does not affect others.


---


## **4. Modeling for Change-Resistant Systems**
Parnas emphasized that **poorly designed systems suffer from ripple effects**, where a small change in one module forces modifications elsewhere. A well-structured **modeling approach** prevents this by ensuring:  


- **Encapsulation of design decisions** – Hiding implementation details within models.  
- **Clear module responsibilities** – Using diagrams to show dependencies without exposing unnecessary details.  
- **Defined interfaces for interaction** – Ensuring modules interact only through well-defined abstractions.


### **Final Takeaways**
- **Modeling is not just documentation—it enforces modularity.**
- **Good models follow Parnas’ principles by encapsulating complexity and defining clear module boundaries.**
- **Diagrams, like modular decomposition, separate stable interfaces from change-prone implementation details.**


---


## **5. Summary Table: Parnas’ Models vs. OO Abstractions**
| **Parnas’ Principle**        | **Traditional Flow-Based Design**  | **Object-Oriented (OO) Design**  | **UML Equivalent**  |
|------------------------------|--------------------------------|-----------------------------|----------------|
| **Encapsulation**            | Global access to data        | Hiding implementation details | **Class & Package Diagrams** |
| **Separation of Concerns**    | Logic spread across modules  | Defined responsibilities per module | **Component Diagrams** |
| **Minimizing Ripple Effects** | Changes cascade through system | Isolated changes via interfaces | **Sequence Diagrams** |
| **Information Hiding**        | All functions modify shared state | Internal data hidden within modules | **State & Activity Diagrams** |


---


## 6. OO Abstractions since Parnas


### OO Class Hierachies


Smalltalk class hierarchy (somewhere in the 1980s)


- Count the "abstract classes" (mostly, the non-leaf classes)
  - i.e. classes that will never be instantiated
  - but exist to defined shared properties of the subclasses.
  - my counts is 40% "abstract"; i.e. nearly half.
    - That's a lot of abstraction!


<img align=right src="https://i.pinimg.com/originals/e2/c1/4a/e2c14a7f83ea042e9dc8e0031e5e1a72.jpg">


```
Object
|    Behavior
|    |    ClassDescription
|    |    |    Class
|    |    |    Metaclass
|    BlockClosure
|    Boolean
|    |    False
|    |    True
|    Browser
|    Collection
|    |    Bag
|    |    MappedCollection
|    |    SequenceableCollection
|    |    |    ArrayedCollection
|    |    |    |    Array
|    |    |    |    ByteArray
|    |    |    |    WordArray
|    |    |    |    LargeArrayedCollection
|    |    |    |    |    LargeArray
|    |    |    |    |    LargeByteArray
|    |    |    |    |    LargeWordArray
|    |    |    |    CompiledCode
|    |    |    |    |    CompiledMethod
|    |    |    |    |    CompiledBlock
|    |    |    |    Interval
|    |    |    |    CharacterArray
|    |    |    |    |    String
|    |    |    |    |    |    Symbol
|    |    |    LinkedList
|    |    |    |    Semaphore
|    |    |    OrderedCollection
|    |    |    |    RunArray
|    |    |    |    SortedCollection
|    |    HashedCollection
|    |    |    Dictionary
|    |    |    |    IdentityDictionary
|    |    |    |    |    MethodDictionary
|    |    |    |    RootNamespace
|    |    |    |    |    Namespace
|    |    |    |    |    SystemDictionary
|    |    |    Set
|    |    |    |    IdentitySet
|    ContextPart
|    |    BlockContext
|    |    MethodContext
|    File
|    |    Directory
|    FileSegment
|    Link
|    |    Process
|    |    SymLink
|    Magnitude
|    |    Association
|    |    Character
|    |    Date
|    |    LargeArraySubpart
|    |    Number
|    |    |    Float
|    |    |    Fraction
|    |    |    Integer
|    |    |    |    LargeInteger
|    |    |    |    |    LargeNegativeInteger
|    |    |    |    |    LargePositiveInteger
|    |    |    |    |    |    LargeZeroInteger
|    |    |    |    SmallInteger
|    |    Time
|    Memory
|    Message
|    |    DirectedMessage
|    MethodInfo
|    Point
|    ProcessorScheduler
|    Rectangle
|    Signal
|    |    Exception
|    |    |    Error
|    |    |    |    Halt
|    |    |    |    |    ArithmeticError
|    |    |    |    |    |    ZeroDivide
|    |    |    |    |    MessageNotUnderstood
|    |    |    |    UserBreak
|    |    |    Notification
|    |    |    |    Warning
|    Stream
|    |    ObjectDumper
|    |    PositionableStream
|    |    |    ReadStream
|    |    |    WriteStream
|    |    |    |    ReadWriteStream
|    |    |    |    |    ByteStream
|    |    |    |    |    |    FileStream
|    |    Random
|    |    TextCollector
|    |    TokenStream
|    UndefinedObject
|    ValueAdaptor
|    |    NullValueHolder
|    |    PluggableAdaptor
|    |    |    DelayedAdaptor
|    |    ValueHolder
```


- More on "Streams"


  - Streams are objects that support sequential access to collections and files of sequential data. Streams can be open on sequenceable collections of any kind of object, on a source of random numbers, or on files.
  - There are two separate sets of stream classes, one for streams on collections, and one for streams on files.
  - More on "Random" as a stream:
    - [FileStream atEnd](https://github.com/bonzini/smalltalk/blob/master/kernel/FileStream.st#L528-L533)
      -  produces a finite stream of characters, terminating at end of file
    - [Random atEnd](https://github.com/bonzini/smalltalk/blob/master/kernel/Random.st#L110-L115)
      -  produces an infinite stream of machine-generated pseudo-random floating-point numbers of good quality in the range 0.0 through, but not including, 1.


[On the criteria to be used in decomposing systems into modules](https://blog.acolyer.org/2016/09/05/on-the-criteria-to-be-used-in-decomposing-systems-into-modules/).
David Parnas, 1971


- Death to flowcharts! (and, by implication, pipes)


## Design Patterns


Q: So what have programmers seen before that might repeat in future systems?    
A: Patterns


  - e.g. _idioms_ : small code-level patterns 
  - e.g. _design patterns_: common collections of a few classes
  - e.g. _archtirctures_: recurring "big picture" structures seen in large systems


- The power of patterns
  - Patterns come with review heuristics
  - Which can identify problems... which can be solved ... using other patterns.
  - So patterns take us naturally to design review/ critique/ improvement


### Patterns example 1: 3-tiered architectures
  
Data : model : dialog


- Data = ? SQL
- Model = ? some object system
- Dialog = ? some gui tool


![image](https://user-images.githubusercontent.com/29195/132729813-e4ff6bb9-51e7-4985-a005-fc05b70362de.png)


- Problem: data and dialog both need the same constraint info (e.g. 0 <= age <= 120): Where to store it?
  - A solution: Ruby on Rails, DRY: “don’t repeat yourself”
    - Database and Web-GUi generated  from a class model 
    - Simplified (amazing) last decade’s web designs
    - Each web url has actually a method on a class
  - A very popular solution (until we went much more "REST" ful)
  - Review heuristics: 
    - Not so good if you repeat information at different layers
    - Layers = communication effort up and down the layers = maybe slow
    - Buiness model NOT hard wrired into the database or dialog? Then we can't lock up a user community!
      THey could take their logic and go elsewhere! 
 
![image](https://user-images.githubusercontent.com/29195/132729905-53b58504-3ed8-425b-99f4-9a326043360d.png)


### Patterns example 2: Composite design patterns


![image](https://user-images.githubusercontent.com/29195/132732186-f1aeec90-3d7c-4890-affc-61a0b2d376dc.png)


	
  ![image](https://user-images.githubusercontent.com/29195/132730145-249b070f-5779-4d0d-b5a5-575a8160e74d.png)


  ![image](https://user-images.githubusercontent.com/29195/132730161-7cdc5972-5870-48b2-8583-79ae3821b533.png)


  ![image](https://user-images.githubusercontent.com/29195/132730271-1d4248a2-0137-4e17-9fc4-789044e73056.png)


Patterns have review heuristics:


  - E.g. delete cascade?  in composites 
	  - If “it” gets deleted, then do you delete the sub-parts


### Patterns example 3: CRUD: low-level code idiom
	
CRUD = create, read, update, delete
	
- In  SQL:  INSERT = C, SELECT = R , UPDATE and DELETE.
- In http:  : GET = R, DELETE.= D, PUT=?, POST=? 
  - PUT : might create  new user or update info on an existing user (so PUT  = C or U?)
  - POST :  sends data to the server and leaves it up to the server to do something with it  


BTW, CRUD can leap from idiom to architecture (web-scale RESTful applications)
	
Regardless
- the main points here is
that complex systems can be abstracted 
into reasonable chunks via Patterns
- Such abstraction simplifies how we discuss even complex
systems
	
Patterns have review heuristics:


- Everything is just CRUD? what about other actions?
- Can only see CRUD for some  service? How to test it effectively? 
- Limited Scope: CRUD only covers basic data operations, not capturing complex transactions or specific business rules within an application. 
- Complexity in Large Systems:
As applications grow, the simplistic CRUD approach can become cumbersome, making it difficult to manage intricate relationships between data entities and complex update scenarios. 
- Poor Error Handling:
CRUD operations often lack built-in mechanisms for handling complex error conditions or validation, which can lead to issues in data integrity. 


---


# Review Questions


## Question 1


**1.1)** Define Encapsulation.  
**1.2)** Contrast Encapsulation with Information Hiding.  
**1.3)** Explain when to use Encapsulation vs. Pipes and Filters.  
**1.4)** A banking application has an `Account` class that stores a user’s balance. Instead of making `balance` a public variable, the class provides methods `deposit(amount)` and `withdraw(amount)`, which check for overdrafts before modifying `balance`.  
Does  ths encapsulation protect the integrity of the bank’s account data?  How can it hurt the software?


 


## Question 2


**2.1)** Define Pipes and Filters.  
**2.2)** Contrast Pipes and Filters with Design patters.  
**2.3)** Explain when to use Pipes and Filters vs. Function Calls.  
**2.4)** A data processing company needs to clean and transform CSV logs before analysis. They design a pipeline:  


- Extract data from raw files.  
- Transform data (convert timestamps, clean missing values).  
- Filter logs to keep only relevant records.  
- Load data into a database.  


Each step is implemented as an independent script that passes data through a Unix pipe (`cat logs.csv | clean.py | filter.py | load.py`).  
Does this pattern make the system more flexible?  How can it hurt the software?


## Question 3


**3.1)** Define Information Hiding.  
**3.2)** Contrast Information Hiding with Desgin Patterns.  
**3.3)** Explain when to use Information Hiding vs. Design Patterns.  
**3.4)** A software engineer is building a car rental system. The `Car` class has an internal function `_calculateDepreciation()` that determines how the car’s value changes over time.  
What does this  method hidden from external access, and what are the benefits of this approach?   How can it hurt the software?


## Question 4


**4.1)** Define Design Patterns.  
**4.2)** Contrast Design Patterns with Object-Oriented Design.  
**4.3)** Explain when to use Design Patterns vs. Procedural Approaches.  
**4.4)** A software team is designing a GUI application. To ensure consistency, they use the **Model-View-Controller (MVC)** pattern, separating data (`Model`), logic (`Controller`), and UI (`View`).  
Does this design pattern improve flexibility and maintainability?  How can it hurt the software? 


