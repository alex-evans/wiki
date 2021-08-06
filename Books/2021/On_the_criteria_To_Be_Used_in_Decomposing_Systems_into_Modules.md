# On the Criteria To Be Used in Decomposing Systems into Modules
![https://www.win.tue.nl/~wstomv/edu/2ip30/references/criteria_for_modularization.pdf]()

Author: D.L. Parnas

Date Finished: 

Genres: Article, Computer Science

Notes Status: In Progress

Quick Description: Paper from 1972 on approaches to modularizing code

Rating: 


## Why am I reading this book?
Part of a series of papers that was recommended that every Software Engineer reads twice. I'll start with reading them once. Always interesting to read something from 50 years ago and see how it still applies. Some things never change.

## Chapters review and notes
### Introduction
Everyone agrees that modularity is needed and the benefits are stated but no one appears to state what the criteria is for dividing things up. This paper will attempt to set those.

### A Brief Status Report
Again, modularity is good and examples exist with this done but no criteria set on how to divide things up.

### Expected Benefits of Modular Programming
Benefits of modular programming:
    1. Development Management
    2. Product Flexibility
    3. Comprehensibility (can study the system one module at a time)

### What Is Modularization?
Modularizations isn't just the work done for each individual module but also the overall design of the entire system that those modules exist in. The system design that is.

### Example System 1: A KWIC Index Production System
The example presented is not truely a big project but for this paper it is needed to prove a point. The KWIC index has lines and then each line has words. Each word can be moved circularly to the end of a line or to the front.

### Modularization 1
Presents what the typical programmer would create when given the KWIC index problem. Devide the code up into an Input, Circular Shift, Alphabetizing, Output, and Master Control. These 5 modules are modules but all four must be specified before work could begin on a document.

### Modularization 2
The paper is starting to lose me but I think I understand a bit of what is going on. This approach makes the modules a independent of each other. Comparison we will see if I'm right.

### Comparison of the Two Modularizations
Right, the first example fails on independence. I don't think I spotted why it failed fully but this chapter points out those areas and mainly it boils down to in order for each module to do it's job it needs to have knowledge about other pieces of the system.

### The Criteria
It boils down to this. Instead of taking the typical approach when designing a system where you start with a Flow chart and you break things down in the manner of where they line up in the chart, think about how the information of the system breaks apart. What parts of the system can be done without any other knowledge. This is the second time I've heard this phrase with software design but "Information Hiding" is important where a module can hide the information it needs from the rest of the system. Each design decision is comprised in the module and hidden in a way where the other modules don't need to know about it.

### Improvement in Circular Shift Module
Some examples of modules.

### Efficiency and Implementation
Explains some dangers in the approach 2 but if I understand it correctly it seems more like an issue of the 1970s and not fully now.

### A Decomposition Common to a Compiler and Interpretor for the Same Language
Example of why they dove into this.

### Hierarchical Structure
Written in a confusing way but I believe it is pointing out that even though we tend to think in Hierarchcial structures, having independent modules cannot be fully made with Heirarchical structures as there is too much dependence required from top to down where you wouldn't be able to remove just one piece easily and carry on with everything else.

### Conclusion
I believe the conclusion pulled is that systems can't be built with a Flowchart in mind. You should start with what design decisions (which I still struggle with defining) are needed to solve the problem and then divide things out so that each module takes a decision and hides the information needed to solve it. Then the routines used to run the system pull together modules instead of modules being a collection of routines.

## Interesting thoughts



## Great quotes


## Actionable items


## Summary
Basically that approaching your projects with flowcharts is the temptation everyone has but it will lead to a heirachical design that involves dependence on higher level modules for lower level ones. Instead approach it with design decisions in mind (still fuzzy on what that means), and focus on how do you divide that up.

