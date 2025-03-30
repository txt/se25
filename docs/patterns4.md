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
      



# Patterns: Comments on student answers


## Questions


- What are the core responsibilities of the layered architecture pattern, and how does it support separation of concerns?
- Which patterns might be more suitable for edge computing applications, and why?
- Why might testing be more difficult in event-driven or space-based systems compared to layered or microkernel architectures?


Responses:


| Question                                    | % Responses that need clarification |
|---------------------------------------------|------------------------|
| Core Responsibilities of Layered Architecture | 15%                    |
| Suitable Patterns for Edge Computing         | 25%                    |
| Testing Challenges in Event-Driven Systems   | 20%                    |


## Answers


### **1. Core Responsibilities of the Layered Architecture Pattern**


- **Good:**
  - Layered architecture organizes software into distinct layers (e.g., presentation, business, data) with specific roles.
  - Supports separation of concerns by isolating functionality and reducing dependencies between layers.
  - Facilitates modularity, maintainability, and scalability.
  - Allows independent testing and debugging of layers.
- **Perhaps not-so good:**
  - Claiming that layered architecture is always ideal for scalability (it can introduce latency and may not suit highly scalable systems).
  - Asserting that layered systems are inherently better than modern distributed patterns like microservices.


---


### **2. Suitable Patterns for Edge Computing Applications**


- **Good:**
  - Event-driven architectures are suitable due to their ability to handle asynchronous, real-time processing at the edge.
  - Microservices work well because they enable decentralized, lightweight services deployable on edge nodes.
  - Space-based architectures are effective for distributed processing and in-memory data sharing across edge devices.
- **Perhaps not-so good:**
  - Suggesting monolithic or client-server patterns are more suitable for edge computing (these patterns lack the decentralization and low-latency capabilities required for edge environments).
  - Misinterpreting the role of service mesh (while useful for managing distributed systems, it might not be a  core architectural pattern for edge computing-  see notes, below).


### **3. Testing Challenges in Event-Driven or Space-Based Systems**


- **Good:**
  - Testing is harder due to asynchronous workflows, race conditions, and distributed state management.
  - Event-driven systems require extensive mocking of message brokers and handling unpredictable event sequences.
  - Space-based systems face challenges in simulating high concurrency, failover scenarios, and distributed state consistency.
- **Perhaps not-so-good:**
  - Claiming that submodules in event-driven systems cannot be tested independently (mocking tools can facilitate this).
  - Overlooking how layered or microkernel architectures also have limitations but are generally easier to test due to their modularity.


### Notes on Service Mesh


Answers to Question 2 mentioned service meshes:


> "Patterns like microservices, event-driven architecture, and
service mesh are more suitable for edge computing. Microservices
support distributed processing, allowing independent deployment and
fault isolation. Event-driven architecture enables real-time data
processing, reducing latency and improving responsiveness. Service
mesh enhances communication and security in distributed environments,
simplifying management and scalability."


FYI, this is a good answer but it may not be exactly true to called service meshes a pattern, - for reasons
that are insightful to the nature of patters (see below).


## Service Mesh


A  service mesh is a dedicated infrastructure layer for managing service-to-service communication in a microservices architecture. It provides features like:


- load balancing, 
- service discovery,
- observability, 
-  traffic control. 
- security (e.g., mutual TLS[^tls]), 


[^tls]: FYI TLS=    transport Layer Security,  a cryptographic
protocol for secure communication over a network. It's the successor
to SSL (Secure Sockets Layer), though the term SSL is still often
used interchangeably.


While it enhances the management of distributed systems, it is not an architectural pattern but rather a tool or framework (e.g., Istio, Linkerd) that supports microservices and other distributed architectures.


- Examples include Istio, Linkerd, AWS App Mesh, Consul, and Cilium. 


### Is Service Mesh Analogous to the "Facade" Pattern?


**Yes, there are some conceptual similarities, but it's not a perfect fit.**


*   **Core Idea of Facade:** The Facade pattern provides a simplified interface to a complex subsystem. It aims to hide the complexity of the underlying components and offer a higher-level, easier-to-use API for clients.
*   **How Service Mesh Relates:** A service mesh simplifies the complexity of service-to-service communication in a microservices architecture. It abstracts away concerns like:


    *   Service discovery
    *   Load balancing
    *   Security (mTLS)
    *   Observability (metrics, tracing)
    *   Traffic management (routing, retries)


The service mesh provides these features transparently, without requiring individual services to implement them directly. It acts as a kind of "infrastructure facade" for inter-service communication.


### Why It's Not a Perfect Match


1.  **Scope:** The Facade pattern is typically applied within a single application or library to simplify access to its internal components. A service mesh operates at the infrastructure level, managing communication between multiple independent services.
2.  **Transparency:** The Facade pattern usually involves explicit calls to the facade object by clients. In contrast, a service mesh often works transparently, intercepting and managing traffic without requiring changes to application code (though configuration is still necessary).
3.  **Intent:** The primary intent of the Facade pattern is simplification of a local API. While service mesh simplifies the management of microservices, its main intent is a lot broader, covering a bunch of issues related to that style of architecture (security, tracing, etc.)


### So, Should You Call a Service Meshes  a Facade?


You can draw a loose analogy between a service mesh and the Facade pattern because both simplify complex systems. 
However, due to differences in scope and implementation, it's not a direct match. 
While there's a conceptual overlap in terms of simplifying a complex system, the scope, transparency, and intent are different


