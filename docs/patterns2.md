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


## Pattern Evolution


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


