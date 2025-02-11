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
      



# Testing2


(rough notes, we'll come back to this alter)


## Glossary of terms


Advanced Debugging Concepts
- Delta Debugging
- Grammar-Based Fuzzing
  - Grammar Definition
- Automated Program Repair
  - Fault Localization
  - Test Failure Visualization
  - Genetic Programming
    - Crossover and Mutation
- Test-case Prioritization


Software Testing
- Regression Testing
  - Continuous Integration
- Test Coverage
  - Branch Coverage
  - Line Coverage
  - Problems with standard coverage measures
- Mutation Testing


Software Defects and Bug Detection
- Concurrency Issues
- Component Interaction Bugs


_____


## **Advanced Debugging Concepts**


**Delta Debugging**   


- Compares a **working version** with a **broken version** to analyze **differences**.
- Helps locate problematic changes efficiently by systematically narrowing down the root cause.


**Grammar-Based Fuzzing**


- Generates **structured random inputs** to test system robustness.
- Commonly used in **security testing** to discover unexpected behavior in APIs and input-handling functions.


**Automated Program Repair**


- Uses **machine learning** to suggest fixes based on patterns in past bug-free code.
- Still in early stages but expected to become a mainstream tool for software maintenance.


**Test-case Prioritization**


- Don't run ll the tests all the time
- Run the "most important" ones first


_____


## Notes on  Grammar-Based Fuzzing


### **Grammar Definition**
The following simple grammar defines valid arithmetic expressions:


```python
grammar = {
    "expr": [["num"], ["expr", "op", "expr"]],
    "num": ["1", "2", "3", "4", "5"],
    "op": ["+", "-", "*", "/"]
}
```


This grammar allows expressions like:


- `1 + 2`
- `3 * 4 - 5`
- `2 / 1 + 3 * 5`


A simple Python program to generate random expressions using this grammar:


```python
import random


def generate(rule, depth=3):
    if depth == 0 or rule not in grammar:
        return random.choice(grammar.get(rule, [rule]))
    return " ".join(generate(r, depth - 1) for r in random.choice(grammar[rule]))


# Generate 5 random test expressions
for _ in range(5):
    print(generate("expr"))
```


Why Use Grammar-Based Fuzzing?
- Ensures generated inputs follow valid syntax.
- Helps uncover edge cases and unexpected behavior.
- Useful for testing parsers, interpreters, and compilers.
- It [works](https://youtu.be/I9imQjwx7W4?si=h77DkQ79l0Pf9WFQ).
  - 450 unique bugs found in popular data bases


Many ways to use grammar-based  fuzzing:


- generating 100,000s of state,emts looking for a crash
-  Muation Tessing
   - Mutation testing is a software testing technique that evaluates the effectiveness of a test suite by introducing small, controlled modifications (mutations) into the program’s source code and checking if the test suite detects these changes.
   - Key concepts are mutants, mutation operators, and mutations scores


1. **Mutants**
  - Mutants are modified versions of the original program.
  - Each mutant has a small change (e.g., replacing `>` with `<` or changing `+` to `-`).
  - Good mutants change the behavior of the program.
  - A strong test suite should **detect** thise changes.
2. **Mutation Operators**;  Common mutation operators include:
  - **Arithmetic Operator Replacement (AOR)**: Changes `+` to `-`, `*` to `/`, etc.
  - **Relational Operator Replacement (ROR)**: Modifies comparison operators (e.g., `>` to `<=`).
  - **Logical Operator Replacement (LOR)**: Replaces `&&` with `||`, or vice versa.
  - **Statement Deletion (SD)**: Removes a statement.
  - **Constant Replacement (CR)**: Replaces a constant value with another.
3. **Mutation Score**
  - The mutation score measures how many mutants are detected by the test suite.
  - Mutation Score = (Killed Mutants / Total Mutants) * 100


_____


### Automated Program Repair


- run tests down the branches of the program.
- on each node, keep counters of passes and fails
- somehow aggregate those counters into a visualization


<img width=400   src="https://github.com/txt/se24fall/blob/main/docs/yellow.png">


<img src="https://github.com/txt/se24fall/blob/main/docs/tarantula.png" width="600px">


For more on test failure localization, , see Jones JA, Harrold MJ, Stasko J. Visualization of test information to assist fault localization. Proceedings of the 24th International Conference on Software Engineering. ACM, Orlando, Florida, 2002; 467–477.


- The branch weighting heuristics proposed by Jones et al. have been (excessively)
  explored by others. For a small sample of that work, see Sarhan, Qusay Idrees, and Árpád Beszédes. "A survey of challenges in spectrum-based software fault localization." IEEE Access 10 (2022): 10618-10639.
- For a review of other fault localization heuristics, see Zakari, Abubakar, et al. "Multiple fault localization of software programs: A systematic literature review." Information and Software Technology 124 (2020): 106312.


Now apply genetic programming (cross-over, mutation):


<img  width=600 src="https://control.com/uploads/articles/Genetic_programming_crossover_of_two_programs.jpg">


Note: this is a CPU-intensive search. So only search a small space (the green zones, above).


_____


## Test Case Prioriiation
 
### The Classic 2014 Study


```
@inproceedings{10.1145/2635868.2635910,
author = {Elbaum, Sebastian and Rothermel, Gregg and Penix, John},
title = {Techniques for improving regression testing in continuous integration development environments},
year = {2014},
isbn = {9781450330565},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/2635868.2635910},
pages = {235–245},
numpages = {11},
series = {FSE 2014}
}
```


https://cs.uwaterloo.ca/~m2nagapp/courses/CS846/1189/papers/elbaum_fse14.pdf


![image](https://github.com/user-attachments/assets/126c9ce8-7fb5-4628-88c0-8c09a128edaa)


![image](https://github.com/user-attachments/assets/236936e0-e150-4831-910a-13db998c5287)


### 2022: Exploring different priorization strategieus


![image](https://github.com/user-attachments/assets/3ca1ba81-2d2b-45e8-8b8e-f1d0d6c1ed61)


https://arxiv.org/abs/2008.00612


```
@ARTICLE{9367020,
  author={Ling, Xiao and Agrawal, Rishabh and Menzies, Tim},
  journal={IEEE Transactions on Software Engineering}, 
  title={How Different is Test Case Prioritization for Open and Closed Source Projects?}, 
  year={2022},
  volume={48},
  number={7},
  pages={2526-2540},
  keywords={Testing;Software;Open source software;Software development management;Measurement;Software algorithms;History;Software testing;regression testing;test case prioritization;open-source software},
  doi={10.1109/TSE.2021.3063220}}
```


**Close-source Projects**


In the following D1 works as well as A2 (which is omniscient: it actually knows where the bugs are)


![image](https://github.com/user-attachments/assets/336aac75-1231-4d4e-8739-79cea4feda82)


**Open-Source Projects**


Here, B1,B3 same as A2  


![image](https://github.com/user-attachments/assets/f0a2defa-1313-444e-9d99-6f3dc9c2a465)


> **Conclusion** : Test case prioritization schemes that work best for the industrial closed-source project can work worse for opensource projects (and vice versa)


_____
### Limitations of Branch and Line Coverage in Bug Detection


Branch and line coverage metrics, while useful, have several limitations in identifying bugs:


1. **Incomplete path coverage**: High coverage doesn't guarantee all execution paths are tested[^1].
  - In testing research, suite quality is often evaluated by a suite's ability to kill mutants (artificially seeded potential faults).
  - Using suites (both manual and automatically generated) from a large set of real-world open-source projects shows that evaluation results differ from those for suite-comparison: statement (not block, branch, or path) coverage predicts mutation kills best.
2. **Test case quality**: Coverage metrics don't assess the effectiveness of test cases[^2].
  - Our study is the largest to date in the literature: we generated 31,000 test suites for five systems consisting of up to 724,000 lines of source code. We measured the statement coverage, decision coverage, and modified condition coverage of these suites and used mutation testing to evaluate their fault detection effectiveness.
  - We found that there is a low to moderate correlation between coverage and effectiveness when the number of test cases in the suite is controlled for. In addition, we found that stronger forms of coverage do not provide greater insight into the effectiveness of the suite. O
3. **Logic errors**: Semantic bugs may persist even with 100% coverage[^3].
  - We use Randoop, a random test generation tool to generate test suites with varying levels of coverage and run them to analyse if the test suites can kill each of the real bugs or not.
  - In this preliminary study, we have performed an experiment on 67 and 92 real bugs from Apache HTTPClient and Mozilla Rhino, respectively. Our experiment finds that there is indeed statistically significant correlation between code coverage and bug kill effectiveness. The strengths of the correlation, however, differ for the two software systems. For HTTPClient, the correlation is moderate for both statement and branch coverage. For Rhino, the correlation is strong for both statement and branch coverage.
4. **Concurrency issues**: Coverage metrics struggle with multithreaded program bugs[^4].
5. **Complex interactions**: Bugs from intricate component interactions may be missed[^5].


These limitations underscore the need for complementary testing approaches and more sophisticated bug detection techniques.


[^1]: Gopinath, R., Jensen, C., & Groce, A. (2014). Code coverage for suite evaluation by developers. In Proceedings of the 36th International Conference on Software Engineering (pp. 72-82).
  


[^2]: Inozemtseva, L., & Holmes, R. (2014). Coverage is not strongly correlated with test suite effectiveness. In Proceedings of the 36th International Conference on Software Engineering (pp. 435-445).


[^3]: Kochhar, P. S., Thung, F., & Lo, D. (2015). Code coverage and test suite effectiveness: Empirical study with real bugs in large systems. In 2015 IEEE 22nd International Conference on Software Analysis, Evolution, and Reengineering (SANER) (pp. 560-564).


[^4]: Yang, J., Evans, D., Bhardwaj, D., Bhat, T., & Das, M. (2006). Perracotta: mining temporal API rules from imperfect traces. In Proceedings of the 28th international conference on Software engineering (pp. 282-291).


[^5]: Marinescu, P. D., & Cadar, C. (2013). Make test-zesti: A symbolic execution solution for improving regression testing. In Proceedings of the 2013 International Conference on Software Engineering (pp. 716-726).


Answer from Perplexity: pplx.ai/share


______


## Review Questions


Remembering:


1. What is delta debugging, and how does it help identify software defects?
2. What is the purpose of grammar-based fuzzing in software testing?


Understanding:


3. How does automated program repair use machine learning to fix software defects?
4. Why is test-case prioritization important in regression testing?


Applying:


```
1 + 2
3 * 4 - 5
2 / 1 + 3 * 5
```


5. Write downa  grammar (in any foramt) that can generate the above statemetns
6. Show what  would you need to change to support exponetiaon.
7. If you had a failing test case in a large codebase, how would you use delta debugging to isolate the problem?


Analyzing:


8. How does test coverage (e.g., branch, line, and statement coverage) correlate with the effectiveness of a test suite?


Evaluating:


9. Some researchers argue that mutation testing is a better indicator of test effectiveness than code coverage. Do you agree or disagree? Justify your reasoning.
10. Test-case prioritization strategies often perform differently for open-source and closed-source projects. What factors might explain these differences?


Creating:


11. Design a test-case prioritization strategy for a continuous integration environment. What factors would you prioritize, and why?


