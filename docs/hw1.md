<p><a name=top> </a>&nbsp</p>
<img align="right" width="300" src="/img/banner.png"> 
<h1> :cyclone: CSC510: Software Engineering<br>NC State, Spring '25</h1>
<p>
    <a 
    href="/README.md#top"><img 
    src="https://img.shields.io/badge/Home-%23ff5733?style=for-the-badge&logo=home&logoColor=white"></a><a 
    href="/docs/syllabus.md#top"><img 
    src="https://img.shields.io/badge/Syllabus-%230055ff?style=for-the-badge&logo=openai&logoColor=white"></a><a 
    href="groups"><img 
    src="https://img.shields.io/badge/Groups-%23ffd700?style=for-the-badge&logo=users&logoColor=white"></a><a 
    href="https://moodle-courses2425.wolfware.ncsu.edu/course/view.php?id=7150"><img 
    src="https://img.shields.io/badge/Moodle-%23dc143c?style=for-the-badge&logo=moodle&logoColor=white"></a><a 
    href="https://discord.gg/DkaZw4zM"><img 
    src="https://img.shields.io/badge/Discord-%23008080?style=for-the-badge&logo=discord&logoColor=white"></a>
</p>
<p>
&copy;2025 <a href="http://timm.fyi" rel="cc:attributionURL dct:creator" property="cc:attributionName">Tim Menzies</a> 
<br> <a href="https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-SA 4.0</a>
<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt="">
<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt="">
<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></p>
<br clear=all>
      



# HW1: A beautiful repo


Your repo is your resume. Does it look professional


 


## What to hand in:


- A one page pdf with a screen snap from point6 
- On that page, also write the  url to the repo crated below.  (where we can look at all your wonderful badges).


Note:


- Points 1..9 are easy.
- Points 10,11,12,13 will require much messing around with web-based help files. Go work it out.
- Point 14 is optional.


## Todo 


1. Your team should create an organization on Github
2. Crate a repo in that organization. Make it public.
3. Find the  big green CODE button. Create a new workshop on main.
4. Check you have the latest python (3.13). If not, then in the terminal, install  python3.13 by running the following command (it is all on one line).
Then check you have python3.13.
```sh
sudo apt update -y; sudo  apt upgrade -y; sudo apt install software-properties-common -y; sudo add-apt-repository ppa:deadsnakes/ppa -y ; sudo apt update -y ; sudo apt install python3.13 -y
```
```sh
python3.13 -B --version
```
5. Now write a short python program (10 lines) and add an error.
   From the command line,  run that file.
You should see errors on the command line.
VSCode should now be asking if you want Python support installed. Do it.
```sh
python3 myfile.py
```
6. Run the code again. Take you mouse and point to one of the errors on the screen. Observe
how it highlights like a hyperlink. Take a screen snap of you point to that error. Include the whole
window so we can see you can see the code and error at the same time.
7.  Go to https://choosealicense.com/licenses/ and find text for your license of choice.
    Change  /workspaces/LICENSE.md to have that content.
8. Goto  to https://github.com/github/gitignore and find the VisualStudio.gitignore and the Python.gitignore.
   Add all that content to /worskspaces/.gitignore
9. Go to http://shields.io and https://dev.to/envoy_/150-badges-for-github-pnk and work out how to add a bade to a markdown file.
  Go to /workspaces/README.md. Delete its contents.  Add badges to the top for 
  - language python
  - license bsd-2   (or what ever you selected)
  - platform linux
10. Look up "pytest". Add a test engine to you code. Add two tests: one that fails, one that passes.
    - Important: make the tests in a SEPARATE file to your code file.
11. Look up how to do a Python workflows. https://docs.github.com/en/actions/use-cases-and-examples/building-and-testing/building-and-testing-python#testing-with-pytest-and-pytest-cov
12. Make your code auto test each time you commit (using the workflows)
13. Add a badge showing if your tests pass or fail. See https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/monitoring-workflows/adding-a-workflow-status-badge
14. Add in all the entries ticked in "HW1" of [the project description](https://github.com/txt/se25/blob/main/docs/proj23.md#rubric-for-repo).


