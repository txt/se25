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
      



# Essay: Ethics (When to "Turn right! Now!")


For me, ethics is about "mitigation", about reflecting and realizing what can go wrong with the stuff you build, then taking steps
to protect everyone (including yourself) against those wrongs.


It this regard "good ethics" is really a synonym for "good requirements engineering" or "good testing".


But more than that, I want to suggest that as trained engineers,
our focus is not just on  mere creation, but also
the effective management of our products. . This shift is embodied in a continuous learning cycle:


```
data    -->(learn)-->   idea
idea    -->(build)-->   product
product -->(measure)--> data
```


This cycle emphasizes the importance of constant adaptation and improvement, mirroring the twin concepts of risk and mitigation. Rather than simply identifying potential pitfalls, our goal is to provide actionable solutions - not just to know we're driving towards a cliff, but to know when to "turn right! now!"


## For this Essay
Ensure that your proposed solution is software based.


To make grading easier, your essay needs the standard essay structure (abstract, introduction, background, ..., discussion, conclusion, references).


Try to avoid bullet points where possible. Instead of listing separate ideas, look for synthesis between concepts. Spend time defining things, but spend more time weaving them together to see what sticks.


Work solo. **IMPORTANT**: read [the lecture on ethics](ethics.md) before you start.


## What to write
- Using these <a href="https://raw.githubusercontent.com/txt/se20/master/etc/img/12steps.png">7 steps</a> as an outline
- Address one of the [case studies](https://onlineethics.org/resources?combine=software&field_keywords_target_id=&field_resource_type_target_id=13236)


Your answer must cover, at the very least:
- Who is _hurt_ by the current design?
- How we might _fix_ that?
  - Important: Ensure that your text justifies why the new design addresses the problems you document.
- How will your fix _empower traditionally disempowered social groups_?
  - Don't just fix this particular problem; rather, address deeper issues that might cause problems in the future.
 
## Word Limit
- No less than three pages (in the format shown below, excluding references).
- No more than four pages.
- **HARD LIMITS:**
  - We will not grade beyond four pages.
  - We will not read if less than three pages.
  - We will not read if it is in the wrong format (see below).


## How to Write


1. Create an Overleaf account.
2. Go to [IEEE Official Templates](https://www.overleaf.com/gallery/tagged/ieee-official).
3. Select "IEEE Bare Demo Template for Conferences" ([template link](https://www.overleaf.com/latex/templates/ieee-bare-demo-template-for-conferences/ypypvwjmvtdf)).
4. Click "Open as Template."
5. Add your name and email to the list you as an author.
6. Add these lines before `\begin{document}`:


   ```latex
   \usepackage[switch]{lineno}
   \linenumbers
   ```


7. Write a three to four-page paper.
8. Click the "Recompile" button.
9. Download your document using the download icon next to "Recompile."
10. Submit to Moodle.


## Grading Rubric


|Grade | What | Notes|
|------|------|------|
|-3| POOR ESSAY STRUCTURE | We want coherent paragraphs, not a bullet list. References are used in a way that enhances the argument. Paragraphs should be content-full (rather that a set of irrelevances). Arguments should be defended and not just be opinions of the form "I think that..." (with no supporting clauses). Each section should start with some clarification/structuring preamble.  |
|2 |SYNTHESIS | +2 if less time defining things than contrasting and comparing things (or building something new out of the things) |
|2 |PROBLEM DEFINITION | +1 if it states the problem and +1 more if does it well; e.g. Situates current problem in broader content|
|2 | GATHER RELEVANT FACTS | +1 if it gather assess relevant facts and +1 more if does it well; e.g. Extensive literature review |
|2 | IDENTIFY STAKEHOLDERS | +1 if it identifies the stakeholders and +1 more if does it well; e.g. show how stockholder requirements can be contradictory|
|5 | LIST OF 5 SOFTWARE-BASED OPTIONS | +5 if it develops a list of iat least five options |
|3 | SOFTWARE DESIGN | +2 of some of those options need to includes a redesign for a better version of the software where the better software mitigates some of the issues discussed by the original software. And +1 more if it does it well; e.g. clever design|
|4 | TESTING | 2 if it tests options using criteria like  harm, publicity, defensibility, reversibility, virtue, colleague, professional, organizational test ([see guidance](https://github.com/txt/se20/blob/master/etc/img/12steps.png)) And 2 more if it does it well; e.g. writes extensively insightful notes on three or more of the tests |
|2 | CHOICE | +1 if tentative choice and +1  if final Choice |
|-2 | OTHER | -2  if the essay is mostly “I think X, I think Y”  without any citations or comment on the amazing things other people have thunk in this matter; or if the   student does not seem to understand general principles behind their particular case studyy or if the essay does not define clear steps to making ethical decisions (beyond the 12 steps of https://github.com/txt/se20/blob/master/etc/img/12steps.png) for future applications.| 
|22| TOTAL      | | 


# QA


1. **Does the title of the essay have to be the same as the name of the case study, or can it be something different?**  
   **A:** Yes.


2. **Should we follow any specific naming convention for the essay?**  
   **A:** `[your_unity_id]_ethics.pdf` (Note: If you do not follow this naming convention, we won't deduct points, but if you follow it, we will be happy.)


3. **What section names should we use in the essay?**  
   **A:** Sections should be titled "The Problem", "Relevant Facts", "Stakeholders", etc.


4. **Who else is an author for our essay?**  
   **A:** You should list only your own name as the author since this is a solo essay.


5. **In the essay, should all five solutions be software-based ones?**  
   **A:** Yes.


6. **Should I use the line number option?**  
   **A:** Yes, check "How to Write", №6.


7. **Are you expecting a solution to the technical problem or the ethical dilemma?**  
   **A:** A mix of software engineering and ethical solutions is best.


8. **Should our essay mention the list of authors?**  
   **A:** Include your name, but institutional addresses can be ignored.


9. **Is "Installing programs without licensing" a valid essay topic?**  
   **A:** Yes.


10. **What is the exact deadline for the essay?**  
    **A:** March 21st, 11:25 AM.


11. **Can we submit a five-page essay if the fifth page only contains references?**  
    **A:** Yes, that's acceptable.


