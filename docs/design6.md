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
      



Analysis of response to Quiz Mar 21.


### **Question 1:**  
**_What are the key differences between process metrics and product metrics, and why do process metrics perform better in defect prediction?_**


#### ✅ Standard Student Response Summary:
- **Process metrics** describe developer behavior (who, when, how).
- **Product metrics** describe code structure (what, where).
- **Process metrics** outperform in defect prediction because they capture human activity patterns that correlate more with bugs.


#### ❌ Common Mistakes:
- Confusing **process** with **project** or **planning** metrics.
- Claiming product metrics are more objective or useful "because they describe the code" without explaining the link to defects.
- Ignoring the cross-language generality of process metrics.


#### 📊 Mistake Rate:
- About **21%** of students (11 out of 52) gave weaker answers focused too heavily on product metric definitions or missed why process metrics outperform.


---


### **Question 2:**  
**_How can software teams integrate automated defect detection without increasing developer friction?_**


#### ✅ Standard Student Response Summary:
- Use **CI/CD pipelines** with linters and test automation.
- Embed tools to run **pre-commit or during development**.
- Minimize noise (false positives) and support fast, actionable feedback.


#### ❌ Common Mistakes:
- Overgeneralizing (e.g., “just use automation”) without discussing **developer friction**.
- Ignoring best practices like **incremental analysis** or **inline feedback**.
- Failing to mention integration into existing workflows (i.e., making automation passive, not disruptive).


#### 📊 Mistake Rate:
- Around **27%** of students (14 out of 52) wrote vague or overly optimistic answers that did not address **friction**.


---


### **Question 3:**  
**_What are the implications of the "Early Bird Effect" for how organizations approach software analytics?_**


#### ✅ Standard Student Response Summary:
- You don’t need massive historical data.
- A model trained on early project data (e.g., first 150 commits) is often sufficient.
- Organizations can build predictors early and stop retraining frequently.


#### ❌ Common Mistakes:
- Misinterpreting the Early Bird Effect as “bugs are easier to fix early” (which is true, but not the point here).
- Saying early warnings "help with fast feedback" without noting the **sufficiency** of early data for prediction.
- Missing the key **implication for analytics strategy**: simpler, smaller, earlier models are enough.


#### 📊 Mistake Rate:
- About **23%** of students (12 out of 52) described general early bug benefits without linking to **analytics implications**.


