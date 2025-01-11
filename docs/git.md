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
    href="https://discord.gg/DkaZw4zM"><img 
    src="https://img.shields.io/badge/Discord-%23008080?style=for-the-badge&logo=discord&logoColor=white"></a> <a 
    href="/LICENSE.md"><img 
    src="https://img.shields.io/badge/(c)%20Tim%20Menzies,%202025-%234b4b4b?style=for-the-badge&logoColor=white"> </a>
    <br>&nbsp;<br>
    <img width=200 src="/img/banner2.png">
</p>
 <h1 align="center">:cyclone:&nbsp;CSC510: Software Engineering<br>NC&nbsp;State, Spring&nbsp;'25</h1>
      



# Git


## What is Git?
Git is a free and open source distributed version control system used for handel everything of projects during software development. It is often used to control source code by programmers collaboratively developing software.
+


### Git data structure 
Git has two data structures: a mutable index (also called stage or cache) that caches information about the working directory and the next revision to be committed; and an object database that stores immutable objects. The index serves as a connection point between the object database and the working tree.<br />
In Git terminology, a file is called a **blob**, and it’s just a bunch of bytes. A directory is called a **tree**, and it maps names to blobs or trees (so directories can contain other directories). 


## Main Concepts


### Repository
A repository (or repo) is a storage space for files, directories, historical records, commits, and heads. It can be local (on your computer) or remote (on a server like GitHub).
<br />
<br />
Some components of the repository:<br />


* .git Directory: contains all the configurations, logs, branches, HEAD, and more
* Working Tree: the directories and files in your repository
* Index: is the staging area in git. It’s basically a layer that separates your working tree from the Git repository.
* HEAD and head: HEAD is a pointer that points to the current branch. A repository only has 1 **active** HEAD. head is a pointer that points to any commit. A repository can have any number of heads.


### Commit
A commit is a snapshot of a set of changes. For example, if you added 5 files, and removed 2 others, these changes will be contained in a commit. Each commit has a unique ID.


### Branch
A branch is a parallel version of your project. By default, Git creates a `main` (or `master`) branch. Branches allow you to develop features independently from the main codebase.


### Stages of Git
* Modified: Changes have been made to a file but file has not been committed to Git Database yet
* Staged: Marks a modified file to go into your next commit snapshot
* Committed: Files have been committed to the Git Database


### Merge
Merging is the process of combining changes from different branches. It integrates the work from one branch into another.


### Clone
Cloning is copying a repository from a remote server to your local machine.


### Pull and Push
- **Pull**: Fetches changes from a remote repository and merges them into your local branch.
- **Push**: Sends your committed changes to a remote repository.


## Basic Commands


```sh
#Create an empty Git repository.
git init


# Set & Print Some Basic Config Variables (Global)
$ git config --global user.email "MyEmail@ncsu.com"
$ git config --global user.name "My Name"


# Quickly check available commands
$ git help


#To intentionally untrack file(s) & folder(s) from git. Based on different languages, 
echo "temp/" >> .gitignore
echo "private_key" >> .gitignore
```
There are different styles of gitignore file. reference:
https://github.com/github/gitignore. For example, Python developers might
consider
using [https://github.com/github/gitignore/blob/main/Python.gitignore](https://github.com/github/gitignore/blob/main/Python.gitignore).


```sh
# Clone a repository
git clone <repository-url>


# Check the status of your files. Will display the branch, untracked files, changes and other differences
git status


# list existing branches & remotes
git branch -a
# create a new branch
git branch <myNewBranch>
# delete a branch
git branch -d <myBranch>
# rename a branch
git branch -m <myBranchName> <myNewBranchName>


# Add files to staging area
git add <file>


# Commit your changes
git commit -m "Commit message"


# By default, git push will push and merge changes from the current branch to its remote-tracking branch
git push


# By default, git pull will update your current branch
git pull


# Create a new branch
git checkout -b <branch-name>
# Switching Branches
git checkout <branch-name>
# Restoring Files to a Previous State
git checkout <branch-name> -- <file-name>
# Checking Out a Specific Commit
git checkout <commit-hash>


# Merge a branch into the current branch
git merge <branch-name>
```


## Special situation


### Stash
You’ve been doing some work in your git repo, but you want to pull from the remote. Since you have uncommitted changes to some files, you are not able to run git pull. Instead, you can run git stash to save your changes onto a stack!


```sh
git stash


git pull


git status #checking if everything is okay


git stash list


git stash pop
#or
git stash apply
```


### Fix merge conflix
When we merge current branch to main branch, some conflicts might happen, like:
```sh
Auto-merging filename.txt
CONFLICT (content): Merge conflict in filename.txt
Automatic merge failed; fix conflicts and then commit the result.
```


This means that Git has identified conflicting changes in "filename" that need to be resolved.<br />
Open the files with conflicts in your text editor or IDE. Conflicts sections shows your current branch, named "**HEAD**", and the branch you try to merge, named "branch-name".<br />
```sh
<<<<<<< HEAD
This is a different line on main branch.
=======
This is the modified line on current branch.
>>>>>>> feature


```
**Step:**<br />


* Resolve the Conflict: Edit the file to resolve the conflict by choosing the right changes to keep.
* Stage the Resolved Files: Once you have resolved the conflicts, you need to stage the changes.
* Commit the Merge: After staging the resolved files, commit the merge.
* Finish the Merge Process: After committing, the merge conflict resolution is complete.
There are some good visual tools to help with dealing conlicts like VSCodes, IntelliJ. To minimize the chance of conflicts, pull changes from the upstream branches regularly and resolve smaller conflicts incrementally.
When working in a team, communicate about major changes or rebase regularly to reduce the chances of conflicts. <br />


### Reverse


In Git, "reverse" typically refers to undoing changes or reverting a commit. There are several ways to reverse changes in Git:


* **Revert a Commit:**
Creates a new commit that undoes the changes made by a previous commit without rewriting history. This is useful when you want to keep the history intact and record the fact that a commit was reverted.<br />
    ```sh
    git revert <commit-hash>
    ```


    But if you have merged a branch into your main branch, but later realized that you need to undo this merge.


    ```sh
    #find the commit hash of the merge that you want to reverse
    git log --oneline
    #use "-m" option to specify the parent of the merge you want to keep. The "-m 1" option typically specifies that you want to keep the changes from the first parent (usually the main branch before the merge).
    git revert -m 1 <merge-commit-hash>
    ```


* **Reset a Commit:**
Moves the **HEAD** pointer and potentially the branch pointer to a previous commit, effectively "erasing" commits from the history. This can be destructive as it changes the commit history, making it as though certain commits never happened.<br />
The git reset command is used to undo commits by moving the HEAD and the current branch to a specified commit. There are three modes of reset:
    * **soft**: Moves the **HEAD** to a specified commit and leaves changes staged for commit.
    * **mixed** (default): Moves the **HEAD** to a specified commit, unstages changes (moves them to the working directory), but doesn't touch the working directory.
    * **hard**: Moves the **HEAD** to a specified commit and deletes all changes in the working directory and index.
    ```sh
    git reset [--soft | --mixed | --hard] <commit-hash>
    ```
    **Important**: Using --hard will lose all changes after the specified commit, and they cannot be recovered easily.
* **Undo Changes in the Working Directory:**
Reverts changes made to files in the working directory that haven't been staged or committed yet.<br />
If you want to undo changes to a file that haven't been staged or committed yet, you can use the "git checkout" (in older versions) or "git restore" (in newer versions) command. 
    ```sh
    git restore <file>
    #or for older version
    git checkout -- <file>
    ```
* **Unstage Changes:**
If you've added changes to the staging area (using "git add") and want to unstage them without losing changes in the working directory:
    ```sh
    git reset HEAD <file>
    ```
* **Reflog to Recover Lost Commits:**
If you accidentally use "git reset --hard" or otherwise lose commits, you can often recover them using the Git reflog, which tracks all movements of **HEAD**.
    ```sh
    git reflog
    ```
    Find the commit hash of the desired state, and then reset or checkout to that commit.


## Some materials
YouTube video: [Learn git in 15 mins](https://www.youtube.com/watch?v=USjZcfj8yxE)<br />
Interacting git learning website: [Learn Git Branch](https://learngitbranching.js.org/)


## In class exercises
Try git comments in Learn Git Branch website. 


## Homework


Note that for the homework, we will be looking for evidence that you completed
these tasks in your [commit log](https://github.com/txt/se24fall/commits/main/).


1. Initialize a new Git repository:
    * Create a new directory called git-homework.
    * Initialize a Git repository in this directory.
2. Create a new project and add it to the repository:
    * Create a file called README.md and write a brief description about the repository.
    * Add LICENSE.md, .gitignore, INSTALL.md,  CONTRIBUTING.md, CODE-OF-CONDUCT.md into your repo. (reference: https://txt.github.io/se24fall/process.html#standard-files; https://choosealicense.com/licenses/)
    * Create a simple webpage(.html file) discribing your team(including team number, all team members' names, and emails).
    * Stage and commit with an appropriate commit message.
3. Modify the file(.html file) and commit the changes:
    * Add links to emails.
    * Commit and push changes with descriptive message.
    * View the commit history and check differences between commits.
    <!-- * git add...; git commit...; git push...; -->
4. Create a new branch:
    * Create a new branch called "feature".
    <!-- * git add...; git commit...; git push...; -->
5. Switch to the new branch and make change:
    * switch to the feature branch.
    * Add a footer to the website.
    * Commit and push the changes with an appropriate message.
6. Simulate a merge conflict:
    * Switch back to the main branch.
    * Make a change to the same part (where the footer was added in feature) but with different content. For example, add a different footer message.
    * Commit and push the changes.
7. Merge and resolve the conflict:
    * Merge the feature branch into the main branch.
    * Resolve the conflict to include both changes or create a consolidated footer message.
    * After resolving the conflict, stage the changes and complete the merge.
8. Revert a commit:
    * Make a new commit by adding a line to the project(.html file).
    * Then undo the most recent commit.
9. Stash Changes:
    * Create a new branch named "temp", and make some changes but do not commit them.
    * Use git stash to save the changes.
    * Switch to the main branch and make another commit.
    * Switch back to your "temp" branch and apply the stashed changes using git stash apply.
10. Clean Up the Repository:
    * Delete all the branches.
11. Put the screen snap of the webpage on the README.md file.   
Submitting: create an pdf include your repo link and one screen snap with your terminal comments and return information of step 9.
Scale: Each step is worth 0.3 points. Totally 3 points.


