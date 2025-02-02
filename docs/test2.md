asdas

# Testing2

(rough notes, we'll come back to this alter)


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

## Notes on  Grammar-Based Fuzzing

### **Grammar Definition**
The following simple grammar defines valid arithmetic expressions:

```python
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

