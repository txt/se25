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
      

# More Patterns

##  Standard Patterns

### ✅ **1. Layered Architecture Pattern**
**Definition:** A traditional n-tier model (e.g., presentation, business, persistence, database). Each layer has a distinct responsibility.
**Example:** An eCommerce web app with separate logic for UI, business rules, and data access.
**Use When:** You want simplicity, separation of concerns, and maintainability—especially good for teams with limited architectural experience.
**Potential Merge:** Related to Client-Server due to the tiered communication, but distinct in layer enforcement.


### ✅ **2. Event-Driven Architecture Pattern**
**Definition:** Components (event processors) asynchronously communicate through events.
**Example:** E-commerce sites reacting to user interactions (e.g., order placed → inventory updated → shipping triggered).
**Use When:** Asynchronous, decoupled, real-time interaction is important.
**Potential Merge:** Shares traits with Microservices (especially in event orchestration), but is broader in scope.


### ✅ **3. Microkernel Architecture Pattern**
**Definition:** A minimal core system with plug-in modules to add functionality.
**Example:** A task scheduler where the microkernel handles scheduling, and plug-ins define specific tasks.
**Use When:** Systems need a stable core and evolving peripheral features.
**Potential Merge:** Conceptually overlaps with Microservices in terms of modularity, but with a stronger emphasis on a single extensible platform.


### ✅ **4. Microservices Architecture Pattern**
**Definition:** Small, independently deployable services focused on specific business functionality.
**Example:** Netflix—hundreds of independent services for playback, recommendations, billing, etc.
**Use When:** You need scalability, decentralized development, or rapid iteration.
**Potential Merge:** Often paired with Event-Driven and shares modularity with Microkernel.

![image](https://github.com/user-attachments/assets/a1f92b32-4f0e-4bf3-b197-03cc9df4b3ed)


### ✅ **5. Space-Based Architecture Pattern**
**Definition:** Built around the concept of **tuple space** (distributed shared memory). Consists of processing units and a middleware managing data and requests.
**Example:** Online auction systems that must handle concurrency and high loads.
**Use When:** You expect high volume, high concurrency, and scaling challenges.
**Better Name?** Consider **“Distributed Memory Pattern”**, **“Grid-Based Architecture”**, or **“Scalable Cache-Based Architecture”** to better reflect the mechanism and purpose.


### ✅ **6. Client-Server Pattern**
**Definition:** The client requests services from a centralized server.
**Example:** Email services, web browsers connecting to web servers.
**Use When:** You need centralized control with distributed access.
**Potential Merge:** Shares structural similarities with Layered Pattern but focuses on runtime interaction, not strict tier separation.


### ✅ **7. Master-Slave Pattern**
**Definition:** Master divides work among slaves, which execute in parallel and report back.
**Example:** Database replication, parallel computation (e.g., matrix operations).
**Use When:** You need high performance via task parallelism.
**Potential Merge:** Somewhat overlaps with Pipe-Filter in linear processing, but Pipe-Filter is more about data transformation than parallel task delegation.


### ✅ **8. Pipe-Filter Pattern**
**Definition:** Data is transformed sequentially through a chain of filters.
**Example:** Compilers (lexing → parsing → optimization → code generation).
**Use When:** You need modular, stream-based data processing (ETL pipelines, Unix shell).
**Potential Merge:** None directly, though visually and architecturally resembles chained microservices or event flows.


### 🧩 Patterns That Could Be Merged or Grouped
| Merge Suggestion | Why |
|------------------|-----|
| **Layered + Client-Server** | Both follow a logical separation of responsibilities and hierarchical communication. |
| **Microkernel + Microservices** | Both emphasize modularity and extensibility, but Microkernel is platform-centric. |
| **Microservices + Event-Driven** | Commonly co-used: event-driven infrastructure supports decoupled microservices. |
| **Pipe-Filter + Master-Slave** | Can resemble each other in some data processing systems, but differ in control flow and purpose. |

Would you like a visual grouping or Venn-style summary of the pattern similarities next?


| Name of Pattern        | Agility                                      | Ease of Deployment                                                              | Testability                                                                 | Performance                                                                 | Scalability                                | Ease of Development                                                                 |
|------------------------|----------------------------------------------|----------------------------------------------------------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|--------------------------------------------|----------------------------------------------------------------------------------------|
| Layered Pattern        | LOW - Difficult to make changes              | LOW - Minor change requires redeployment of the entire app                      | HIGH - Presentation component can be mocked to isolate testing              | LOW - Pattern not friendly for high performant app                                   | LOW - Difficult to scale                   | HIGH - Easy to develop                                                                  |
| Event-Driven Pattern   | HIGH - Changes are isolated and can be done without any dependency on other components | HIGH - Decoupled nature of the event processor component makes it easy | LOW - Testing of individual units requires specialized testing tools        | HIGH - Asynchronous capabilities make it highly performant                          | HIGH - Highly scalable                     | LOW - Asynchronous nature of the pattern makes development complex                        |
| Microkernel Pattern    | HIGH - Loosely-coupled plugin modules make changes easier | HIGH - Dynamic addition of plugin modules to the core system makes it possible | HIGH - Plugin modules can be tested separately and mocked by the core system | HIGH - Pattern allows easy customization and streamlining of apps                    | LOW - Difficult to scale                   | LOW - Design and contract governance make it difficult to develop                         |
| Microservices Pattern  | HIGH - Loosely-coupled pattern makes it easy | HIGH - Services are deployed as separate units of software                      | HIGH - Isolation of business functionality supports mocking and makes testing easy | LOW - Distributed nature of the pattern makes it slow                         | HIGH - Highly scalable                     | HIGH - Smaller and isolated scope makes development easy                                  |
| Spaced-Based Pattern   | HIGH - Small app size makes changes easy     | HIGH - Cloud-based tools allow easy deployment to servers                        | LOW - High user loads in the test environment make it time consuming and expensive | HIGH - In-memory data access and caching mechanism make apps faster            | HIGH - Highly scalable                     | LOW - Sophisticated caching and an in-memory data grid makes it complex to develop         |
| Client-Server Pattern  | LOW - Changes cannot be done in larger applications | HIGH - Cost-effective UI, data storage, connectivity, and reliable app services make it easy to deploy | HIGH - Easy to test since errors are identified independent of implementation | HIGH - App performance is constant after scaling                              | HIGH - Highly scalable                     | HIGH - Set of shared resources and services makes it easy to develop                       |
| Master-Slave Pattern   | LOW - Some tasks are difficult to partition  | HIGH - Slave components makes deployment easy                                   | HIGH - Parallel test execution allows ease of testing                         | HIGH - Division of task makes performance smooth                                 | HIGH - Highly scalable                     | HIGH - Multiple smaller components eases the development process                             |
| Pipe-Filter Pattern    | HIGH - The parallel processing speeds up time-intensive processes and improves overall throughput | HIGH - Each filter can be deployed separately                                | HIGH - Each component can be tested in isolation                             | LOW - Performance would decrease with each additional filter in the pipeline         | HIGH - Each filter is scalable             | HIGH - Prototyping makes it easy to develop                                                |

## Applying Patterns To  Edge Computing


### 🌐 **Edge Computing (Definition)**

**Edge computing** is a distributed computing model where **data processing and storage occur close to the physical location** where it's generated — such as on devices, local servers, or edge data centers — instead of relying solely on a central cloud.

Think of edge computing as "bringing the cloud closer to where the action happens.


### 🧠 Why It Matters

The goal of edge computing is to:
- **Reduce latency** (faster response times)
- **Save bandwidth** (less data sent to the cloud)
- **Increase reliability** (local fallback when network is slow or offline)
- **Enable real-time processing** (critical for things like autonomous vehicles, smart cameras, etc.)


### 🛠️ Example Use Cases
| Use Case                | How Edge Helps                                         |
|-------------------------|--------------------------------------------------------|
| **Self-driving cars**   | Process sensor data instantly to make driving decisions. |
| **Smart cameras**       | Analyze video locally for motion or face detection.     |
| **Retail stores**       | Track inventory and customer behavior in real time.     |
| **Industrial IoT**      | Monitor and react to factory machinery conditions.      |


### 📍 Edge vs. Cloud

| Feature       | Edge Computing                 | Cloud Computing              |
|---------------|--------------------------------|------------------------------|
| **Location**  | Near the data source           | Centralized data centers     |
| **Latency**   | Very low                       | Higher                       |
| **Reliability** | High (local fallback possible) | Depends on internet         |
| **Cost**      | Saves on bandwidth costs       | May incur ongoing network costs |


### 🔍 Where Edge Computing Fits Among the 8 Patterns

| Pattern               | Can it be used with Edge? | Why / How                                                   |
|-----------------------|----------------------------|--------------------------------------------------------------|
| **Layered**           | 🚫 Rarely                  | Typically central-server-based; not edge-optimized.         |
| **Event-Driven**      | ✅ Absolutely              | Edge nodes can emit/respond to events (e.g., IoT triggers). |
| **Microkernel**       | 🤏 Occasionally           | Edge plug-ins are possible but less common.                 |
| **Microservices**     | ✅ Frequently              | Microservices can run at edge nodes for localization.       |
| **Space-Based**       | ✅ Naturally               | Distributed memory/grid systems are well-suited to the edge.|
| **Client-Server**     | 🚫 Not directly            | Server is centralized; client is passive.                   |
| **Master-Slave**      | 🤏 Rarely                 | Edge use is limited unless slaves are deployed edge-side.   |
| **Pipe-Filter**       | ✅ Sometimes               | Filters could run on edge devices (e.g., streaming pipelines).|


### 🔧 Best Fit Patterns for Edge Computing

1. **Space-Based** — because it’s inherently about distributing processing and storage across nodes, which aligns closely with edge/CDN strategies.
2. **Event-Driven** — since edge devices often react to local events (e.g., sensors, users).
3. **Microservices** — due to the loosely-coupled nature of services that can be deployed selectively on the edge.

## Some Pattern Evolution

### 🕰️ **Then: LAMP & MEAN (Classic Layered Architectures)**


- **LAMP**: Linux + Apache + MySQL + PHP
  → Server-rendered HTML, monolithic backend logic.


- **MEAN**: MongoDB + Express.js + Angular + Node.js
  → Full-stack JavaScript with clear frontend/backend split.


These were **layered** in the sense that the stack flowed cleanly from data to presentation.


### 🚀 **Now: What We Do in 2025**


Today’s web architecture is more **modular**, **decoupled**, and **scalable** — built to handle real-time apps, mobile, cloud, and performance at scale.


So the big shift today is **decoupling**:
- APIs instead of direct DB calls
- Serverless instead of always-on backend
- Micro-frontends instead of big frontend apps
- Static-first with dynamic "sprinkles"


Here are some of  major patterns in practice:


### ✅ **1. Jamstack (Static + API-First + Pre-rendering)**
**Stack**: JavaScript, APIs, and Markup
**Tools**: Next.js, Gatsby, Hugo, Netlify, Vercel
**Why**: Speed, CDN-first delivery, scalability
**Architecture**: Pre-rendered content + dynamic behavior via API calls
**Pattern**: Closest to Microservices + Event-Driven


### ✅ **2. Serverless Architectures**
**Stack**: Frontend + Functions-as-a-Service (FaaS)
**Tools**: AWS Lambda, Azure Functions, Cloudflare Workers
**Why**: Auto-scaling, cost-efficient, no server management
**Architecture**: Business logic broken into tiny on-demand functions
**Pattern**: Microservices + Event-Driven + Pipe-Filter


### ✅ **3. Micro-Frontend Architectures**
**Stack**: Independent UI components managed and deployed separately
**Tools**: Module Federation (Webpack 5), Single-SPA, Nx
**Why**: Large teams, decoupled frontend deployment
**Architecture**: Frontend mimics microservices structure
**Pattern**: Microservices at the browser level


### ✅ **4. Edge Computing & CDN-Backed Logic**
**Stack**: Cloudflare, Fastly, Vercel Edge
**Why**: Ultra-low latency, regionalized logic
**Architecture**: Push logic and data caching close to the user
**Pattern**: Space-Based (or Distributed Memory)


### ✅ **5. Hybrid Rendering (SSR + CSR + ISR)**
**Tools**: Next.js, Nuxt
**Why**: Flexibility — SEO + speed + dynamic updates
**Architecture**: Combines pre-rendered static content with dynamic server-side rendering
**Pattern**: Modern take on Layered, but with JAM+Serverless flavor


### Summary Table


| Old Stack | Modern Equivalent           | Key Architectural Shift                   |
|-----------|-----------------------------|--------------------------------------------|
| LAMP      | Jamstack + Serverless       | From server-rendered to API + static site |
| MEAN      | Microservices + Serverless  | From monolith to decoupled services       |
| MVC       | Micro-Frontends             | From unified frontend to modular UI       |


