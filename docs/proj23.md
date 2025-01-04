<h1> :cyclone:  csc510: Software Engineering<br>NC State, Spring'25</h1>
<a name=#top><p>&nbsp;</a><img align=right width=300 src="/img/banner.png">
&copy;2025 <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="http://timm.fyi">Tim Menzies</a> 
via  <a href="https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" 
          style="display:inline-block;">CC BY-SA 4.0 <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>
<hr>
        
[home](/README.md#top) | [syllabus](/docs/syllabus.md) | [groups](groups) | [moodle](https://moodle-courses2425.wolfware.ncsu.edu/course/view.php?id=7150) | [discord](https://discord.gg/DkaZw4zM)
   
<hr>



# Project2, Project3 


## Your task


Extend a prior project


Important notes:


- You goal is to do enough work, and paint a clear vision for the future, such that someone else wants to use your code for their next project.
- Your deliverables here include a 15 minute demo with a tutor where they will be looking for **significant improvement** in your current project (compared to what you started with).


## What to hand in


One pdf with


1. a poster advertising your project (just like the project1 poster) with the aim to attract some other team to work on this code for project3.
2. a link to your project repo. That repo must have the follow
    - Repo is public (not at NCSU)
    - No keys or passwords in files
    - New stuff should be in separate branch to old
    - The repo contains the file names
      - READMME.md (with badges)
      - .gitignore
    - Bages  have to be 'real': i.e. if yu click on them you end up at the service that generated the (e.g._ 78% of tests passing" badge.
    - Project shows evidence of parallel work; i.e. merged pull requests
    - At least 20 test cases per team member.
          - test cases include  nominal **and** off-nominal cases (so you are testing for expected and problematic cases)
3. A table with **three** columns:
    - Column1 has all the following  points shown in the table below PLUS all the points from the
      [Software Sustainability Evaluation](https://docs.google.com/forms/d/e/1FAIpQLSf0ccsVdN-nXJCHLluJ-hANZlp8rDKgprJa0oTYiLZSDxh3DA/viewform).
    - Column2 is your self-assessment. For each items, score yourself zero (none), one (a litte), two (somewhat), three (a lot).
    - Column3 is for any links you  are adding to support your claim in column two.
    - At the top, show the sum of column2,
  
## Grading


Note that project2 and project3 start with some prior poster boasting that you can do XYZ.


You do not have to do XYZ, just as long as, when asked, you a well-founded reason for (e.g.)  doing A not X.


Project2:


- demo: 5 marks
- rubric: 8 marks (see below)
- poster: 2 marks


Project3


- demo: 21 marks 
- poster: 2 marks


## Rubric for Repo


Everyone gets full marks then losses  0.33 marks for anything missing from the following:


|Notes|evidence|Hw1|
|-----|---------|--|
|Workload is spread over the whole team (one team member is often Xtimes more productive than the others... --| |
but nevertheless, here is a track record that everyone is contributing a lot)|evidence in GH| |
|Number of commits|in GH| |
|Number of commits: by different people|in GH| |
|Issues reports: there are **many**| |
|Issues are being closed|evidence in GH| |
|Docs: doco generated, format not ugly |in GH|:heavy_check_mark:|
|Docs: what: point descriptions of each class/function (in isolation)| |:heavy_check_mark:|
|Docs: how: for common use cases X,Y,Z mini-tutorials showing worked examples on how to do X,Y,Z|doc page entries| | |
|Docs: why: docs tell a story, motivate the whole thing, deliver a punchline that makes you want to rush out and use the thing| |
|Docs: short video, animated, hosted on your repo. That convinces people why they want to work on your code.| |
|Use of version control tools| |
|Test cases exist|dozens of tests and those test cases are more than 30% of the code base| |
|Test cases are routinely executed|E.g. travis-com.com or github actions or something| |
|Issues are discussed before they are closed|even if you discuss in slack, need a sumamry statement here| |
|Chat channel: exists|Link or screenshots|:heavy_check_mark:|
|Test cases: a large proportion of the issues related to handling failing cases.|If a test case fails, open an issue and fix it| |
|Evidence that the whole team is using the same tools: everyone can get to all tools and files| |
|Evidence that the whole team is using the same tools (e.g. config files in the repo, updated by lots of different people)| |
|Evidence that the whole team is using the same tools (e.g. tutor can ask anyone to share screen, they demonstrate the system running on their computer)| |
|Evidence that the members of the team are working across multiple places in the code base| |
|Short release cycles | (hard to see in short projects) project members are committing often enough so that everyone can get your work| |
|The file .gitignore lists what files should not be saved to the repo. See [examples]i(https://github.com/github/gitignore)|in GH|:heavy_check_mark:|
|The file INSTALL.md lists how to install the code|in GH|:heavy_check_mark:|
|The file LICENSE.md lists rules of usage for this repo|in GH|:heavy_check_mark:|
|The file CODE-OF-CONDUCT.md lists rules of behavior for this repo; e.g. see [example](https://github.com/probot/template/blob/master/CODE_OF_CONDUCT.md)|in GH|:heavy_check_mark:|
|The file CONTRIBUTING.md lists coding standards and lots of tips on how to extend the system without screwing things up; e.g. see [example](https://github.com/probot/template/blob/master/CONTRIBUTING.md)|in GH|:heavy_check_mark:|
|The file README.md contains all the following|in GH| |
|Video|2min video of new functionality, showing a significant delta from prior.| |
|DOI badge: exists. To get a Digitial Object Indentifier, regiser the project at [Zenodo](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content). DOI badges look like this: ![Zenodo doi badge](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.1234567-blue.svg) |in GH| :heavy_check_mark:|
|Badges showing your style checkers |config files in GH showing your config, badges in README|:heavy_check_mark:|
|Badges showing your code formatters. |config files in GH showing your this formatter's  config, badges in README|:heavy_check_mark:|
|Badges showing your syntax checkers. |config files iin  GH showing this checker's config, badges in README  |:heavy_check_mark:|
|Badges showing your code coverage tools|config files in GH, badges in README| |
|Badges showing any other Other automated analysis tools|config files in GH, badges in README|:heavy_check_mark:|


## Rubric for poster


One anti-patterns seen in the prior posters (and don't let this happen to you):


- It was hard to distinguish what existed, right now,  in the current project
  - From the proposed extensions


Your  poster:


- Is a standard page size
- Uses very small fonts ( text may be as small as 4 to 6 point)
- Is a pdf file
- Does  not have vast amounts of white space
- Has 
  - a screen snaps of the running system; 
  - has a  url/QR code to the repo (to ensure that the QR code of the poster does not expire, use [tiny.cc](https://tiny.cc/) or [NCSU go links](https://golinks.ncsu.edu/)
  - optionally (but preferred) has a url/QR code to a live demo (and how you host that demo is up to you).
- Sells the software:
  - i.e. up to  5  ways that this software (Version i) is better than what was true BEFORE this software was written
- Proposes a better version for version i+1
  - 3 to five implementation milestones, each of which  takes version i+1 to a better place
  - Note that these milestones have to demonstrate a possible implementation plan, with clear goals.
  - Perhaps some milestones will be explored in parallel.
- Boasts your number of test cases (one group listed 130+, which is really cool since that means you can  make new changes to the system while checking if the old stuff still works)


### Ways to lose points:


- Your poster does not have the above features.
- Your poster fails to sell. Specifically:
  - in the first 15 seconds or reading, the poster offers  does not  very clear understanding of what was going on (so good intro sentence)
  - the  poster does not  make a case that this technology stack is interesting (e.g. "select this project so you can
    learn about kubernetes")


