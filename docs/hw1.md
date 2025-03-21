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
      



# HW1: A Beautiful Repo


Your repo is your resume. Does it look professional?


## How to Submit Assignment:
- Only **one group member** submits the work.
- Include:
  - **Group number**
  - **Names of all participants** (Name - github user id)
  - **Repo URL**
  - A **screenshot** as specified in Tasks 3, 4, 6.


## What to Hand In:
- A **one-page PDF** with a **screenshot** from Task 6.
- On that page, also write the **repo URL** created below. (where we can look at all your wonderful badges).


## Notes:
- Tasks **1–9** are straightforward.
- Tasks **10–13** require additional troubleshooting with web resources.
- Task **14** is **optional** but encouraged. All these task 14 will be required for Project2 so
  if you want to check you can get **all** your Project2 marks, try these now. Sure, some of these will require researching on the web but you've got time (its still jsut
  start of semester) and you've got a good team. So why not go for it?


**Ensure equal contribution among group members.**


## Todo


1. Your team should create an organization on Github.
   - Do not use NCSU GitHub.
  
2. Create a repo in that organization. Make it public. 


Learn more about [READMEs](https://docs.github.com/en/enterprise-server@3.14/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes).


3. Find the big green  `CODE` button. Create a new codespace on the main.
- Take a screenshot.
- Use codespace to complete following steps.


4. **Check you have the latest Python (3.13)**
   - If not, then in the terminal, install  python3.13 by running the following command (it is all on one line).
     ```bash
     sudo apt update -y; sudo  apt upgrade -y; sudo apt install software-properties-common -y; sudo add-apt-repository ppa:deadsnakes/ppa -y ; sudo apt update -y ; sudo apt install python3.13 -y


     ```
     Then check you have python3.13.


     ```bash
     python3.13 -B --version
     ```
     - Take a screenshot


5. Write a short Python program (10 lines) and add an error.
- From the command line,  run that file.


     ```bash
     python3 myfile.py
     ```
     
- You should see errors on the command line.
- VSCode should now be asking if you want Python support installed. Do it.


  
6. Run the code again. Take your mouse and point to one of the errors on the screen. Observe how it highlights like a hyperlink.


- Take a screenshot of you and point to that error. Include the whole window so we can see you can see the code and error at the same time..
It is probably syntax error that you fix after making screenshot. 


For 7 and 8 tasks, it is recommended that a terminal be used. 


7. **Add License**
   - Go to [Choose a License](https://choosealicense.com/licenses/) and find the text for your license of choice.
   - Add your chosen license text to `LICENSE.md`. Change  /workspaces/LICENSE.md to have that content. The `LICENSE.md` document should be on your repository root.
Learn more about [licenses](https://docs.github.com/en/enterprise-server@3.14/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository).


8. **Add `.gitignore`**
   - Use [GitHub Gitignore](https://github.com/github/gitignore).
   - Find and include:
     - Visual Studio `.gitignore`
     - Python `.gitignore`
Learn more about [ignoring files](https://docs.github.com/en/enterprise-server@3.14/get-started/getting-started-with-git/ignoring-files).


9. **Add Badges**
   - Go to [Shields.io](https://shields.io) and [dev.to](https://dev.to/envoy_/150-badges-for-github-pnk) and work out how to add a badge to a markdown file.
   - Go to /workspaces/README.md. Delete its contents. Add badges to the top for:
     - **Language**: Python
     - **License**: BSD-2 (or your choice)
     - **Platform**: Linux


All badges that connect to the service must be active ✅. No dead badges! ❌ Make sure they link correctly.


10. **Add Tests**
-  Look up "pytest". Add a test engine to your code.
-  Write two tests:
     - One test should pass.
     - One test should fail(that means that you should have one logical error).
- Important: Make the tests in a SEPARATE file for your code file.
- It should show "fail". Thereby showing your tests are working.


11. **Set Up GitHub Actions**
    - Look up how to do Python workflows [here](https://docs.github.com/en/actions/use-cases-and-examples/building-and-testing/building-and-testing-python#testing-with-pytest-and-pytest-cov).  
    - Automate tests to run on every commit.
   
12. Make your code auto-test each time you commit (using the workflows). GitHub actions are run on push. Ideally, you push after every commit to ensure what broke your code.


13. **Add a Status Badge**
    - Add a badge showing if your tests pass or fail.
    - Follow instructions [here](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/monitoring-workflows/adding-a-workflow-status-badge).
   
14. **Optional**
    - Add in all the entries ticked in "HW1" of [the project description](https://github.com/txt/se25/blob/main/docs/proj23.md#rubric-for-repo). 


