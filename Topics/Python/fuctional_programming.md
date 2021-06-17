## Functional Programming Notes

1. First Class Functions
= Higher order function is one that takes a function as a parameter or returns a function as a result, or both.

**Composition:**
```
def f(x):
    return x + 2

def g(h, x):
    return h(x) * 2

print(g(f, 42))
```

**Closure:**
```
def addx(x):
    def _(y):
        return x + y
    return _

add2 = addx(2)
add3 = addx(3)

print(add2(2), add3(3))
```

**Currying:**
```
def f(x, y):
    return x * y

def f2(x):
    def _(y):
        return f(x, y)
    return _

print(f2(2))   # returns a function
print(f2(2)(3))  # 6
```

2. Pure Functions
- Simple - Do one thing and do it well
- Limited number of arguments
- Output depends completely on the input
- Same input given the same outputs
- State not used or modified
- No side effects
- Complexity through combination

3. Immutable Variables
- Immutable = the inability for a variable to change it's value

4. Lazy Evaluation
- Evaluation delayed until results needed
- Variables assigned when needed
- Pay as you go
- Possibly can save resources
- Might cost more overall in multithreaded applications

5. Recursion
- Tail Recursion
    - Avoid stack exhaustion
    - Function f calls function g at the end
    - If function g leads to f => f is tail recursive
    - Function f and g may be the same
    - Turn recursion into iteration
    - Only one stack frame per function
    - Not done in Python due to stack trace not being created
- Trampolining
    - Works and very fast
    - Relies on garbage collection, once a function is used and on to the next one it is ready for the garbage collector

6. Simplifyinging Condition Testing with Matching