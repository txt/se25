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


So we can mark it easier,  your essay needs the  standard essay
structures (abstract, introduction, background, ... , discussion,
conclusion, references).


And try to avoid bullet points, where you can. Instead of just
listing a  bunch of separate things, look for synthesis between
things. So, sure, spend sometime defining things but spend more
time thawing things together to see what sticks.


Work solo. **IMPORTANT**: read [the lecture on ethics](ethics.html) before you start.


## What to write
- Using these <a href="https://raw.githubusercontent.com/txt/se20/master/etc/img/12steps.png">7 steps</a> as an outline
- Address one of the [case studies](https://onlineethics.org/resources?combine=software&field_keywords_target_id=&field_resource_type_target_id=13236)


Your answer must cover, at the very least:
- who is _hurt_ by the current design;
- how we might _fix_ that?
  - Important: ensure that your  text justifies why  the new design addresses the  problems you document.
- and how will your fix _empower traditionally disempowered social groups_?
  - ie. don't just fix this particular problem; rather, address   deeper issues that might cause problems in the future).


## Word limit
- No less that three pages (in the format shown below, excluding references);
  - no more than four
- HARD LIMITS: 
  - we will not grade after four pages.
  - we will not read if less than three.
  - we will not read if it is the wrong format (see below)


## How to write


Create an overleaf.com account


- Go to https://www.overleaf.com/gallery/tagged/ieee-official
- Select :IEEE Bare Demo Template for conferences"
  -  https://www.overleaf.com/latex/templates/ieee-bare-demo-template-for-conferences/ypypvwjmvtdf
- Hit "open as template"
- Add your name and email to list of authors.
-  Add these lines before `\begin{document}`


         \usepackage[switch]{lineno}
         \linenumbers


- Write at a three to four page paper.
- Hit the "recompile" button
- Look to the right of "recompile: for the download icon
- Submit to Moodle


## Grading Rubric


|Grade | What | Notes|
|------|------|------|
|-3| POOR ESSAY STRUCTURE | We want coherent paragraphs, not a bullet list. References are used in a way that enhances the argument. Paragraphs should be content-full (rather that a set of irrelevances). Arguments should be defended and not just be opinions of the form "I think that..." (with no supporting clauses). Each section should start with some clarification/structuring preamble.  |
|2 |SYNTHESIS | +2 if less time defining things than contrasting and comparing things (or building something new out of the things) |
|2 |PROBLEM DEFINITION | +1 if it states the problem and +1 more if does it well; e.g. Situates current problem in broader content|
|2 | GATHER RELEVANT FACTS | +1 if it gather assess relevant facts and +1 more if does it well; e.g. Extensive literature review |
|2 | IDENTIFY STAKEHOLDERS | +1 if it identifies the stakeholders and +1 more if does it well; e.g. show how stockholder requirements can be contradictory|
|5 | LIST OF 5 OPTIONS | +5 if it develops a list of iat least five options |
|3 | SOFTWARE DESIGN | +2 of some of those options need to includes a redesign for a better version of the software where the better software mitigates some of the issues discussed by the original software. And +1 more if it does it well; e.g. clever design|
|4 | TESTING | 2 if it tests options using criteria like  harm, publicity, defensibility, reversibility, virtue, colleague, professional, organizational test ( see guidance on that at https://github.com/txt/se20/blob/master/etc/img/12steps.png) And 2 more if it does it well; e.g. writes extensively insightful notes on three or more of the tests |
|2 | CHOICE | +1 if tentative choice and +1  if final Choice |
|-2,+1 | OTHER | -2  if the essay is mostly “I think X, I think Y”  without any citations or comment on the amazing things other people have thunk in this matter.  +1 more if it  beyond the specifics of your answer, the real test will be ""does the student understand general principles that can be applied in other contexts”; i.e.  if the essay defined clear steps to making ethical decisions (beyond the 12 steps of https://github.com/txt/se20/blob/master/etc/img/12steps.png) for future applications.| 
|22| TOTAL      | | 


 


