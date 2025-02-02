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

<img width=400 align=right src="https://github.com/txt/se24fall/blob/main/docs/yellow.png">

- run tests down the branches of the program.
- on each node, keep counters of passes and fails
- somehow aggregate those counters into a visualization

<br clear=all>

<img src="https://github.com/txt/se24fall/blob/main/docs/tarantula.png" width="600px">

For more on test failure localization, , see Jones JA, Harrold MJ, Stasko J. Visualization of test information to assist fault localization. Proceedings of the 24th International Conference on Software Engineering. ACM, Orlando, Florida, 2002; 467–477.

- The branch weighting heuristics proposed by Jones et al. have been (excessively)
  explored by others. For a small sample of that work, see Sarhan, Qusay Idrees, and Árpád Beszédes. "A survey of challenges in spectrum-based software fault localization." IEEE Access 10 (2022): 10618-10639.
- For a review of other fault localization heuristics, see Zakari, Abubakar, et al. "Multiple fault localization of software programs: A systematic literature review." Information and Software Technology 124 (2020): 106312.

Now apply genetic programming (cross-over, mutation):

<img  width=600 src="https://control.com/uploads/articles/Genetic_programming_crossover_of_two_programs.jpg">

Note: this is a CPU-intensive search. So only search a small space (the green zones, above).


## Test Cae Prioriiation

https://cs.uwaterloo.ca/~m2nagapp/courses/CS846/1189/papers/elbaum_fse14.pdf
