# A Philosophy of Software Design
![https://www.amazon.com/Philosophy-Software-Design-John-Ousterhout/dp/1732102201](https://images-na.ssl-images-amazon.com/images/I/51t2s-WNb3L._SX405_BO1,204,203,200_.jpg)

Author: John Ousterhout

Date Finished: 

Genres: Software Design, Tech

Notes Status: In Progress

Quick Description: Leasons learned exploring the dos and don'ts of creating workable software.

Rating: 


## Why am I reading this book?
As I get deeper into a software senior engineer role I need to improve upon my understanding of how to create code that can be used long term. I am always looking for ways to improve on my own code (there are tons I still need to learn) and this book has been pointed to as a great book for doing that. I want to create code where anyone could pick it up (including myself months down the line) and understand quickly what it is doing and also be able to make changes and improve it without fear of destroying the product / service.

## Chapters review and notes
### Chapter 1 - Introduction
Just an intro into the book and how he went about coming up with the content. It is interesting that he kind of used his class to experiment on and find out what design works. Classic teacher who never stops learning. I think one major thing to pull is that you learn a ton from reading other people's code. That is something I am missing currently as I am mainly dealing with my code. 

### Chapter 2 - The Nature of Complexity
Complexity is very bad and isn't limited to massive applications. Even small bits of code can by complex (in fact some times the less code the more complex). A big point at the end of this chapter is that complexity doesn't just suddenly occur. It's added incrementally and over time software becomes a mess to understand and change. It needs to be a focus the entire time and always improved upon.

### Chapter 3 - Working Code Isn't Enough
Focusing on design early and often will take a bit more time on development but will pay off over time. When you focus solely on fixing the bug at hand or adding a feature as fast as possible with little to no regard to future work / complexity, you are hurting your future self for quick gains. I've seen this a lot with both startups I've been a part of and I think one thing this book doesn't fully touch on is it is also due to lack of developer experience / skill. I know I wasn't aware how to clean up some code when I first started with development and focused solely on how I could add my stuff without breaking anything (smallest changes as possible). This meant no clean up, just fix quickly for now. This was escpecially true at Meditech where there were no automated testing and we just wanted to always limit our code impact as much as possible. Taking the time early and often to think of software design is extremely important.

### Chapter 4 - Modules Should Be Deep
At first I was confused by the term Deep Modules. I thought big modules would make things more complexed. And then the book explains why suffereing from "classitist" is a bad thing. Having a bunch of small modules that all expose interfaces increases complexity, not decreases. Yes you want components in your system but to a point where it makes sense and if you can hide a lot of complexity behind interfaces where people don't need to know all the things happening under the hood in order to call your module (Note you might be yourself calling the module but you still have to remember what it does) the better. This was a bit eye opening for me but a really good chapter. The image he provides for the difference between deep and shallow interfaces as rectangles that show functionality vs interface sizes was really good. I'll try to keep this in mind moving forward and gave me some thoughts on how to refactor current work items.

### Chapter 5 - Information Hiding (and Leakage)


### Chapter 6 - General-Purpose Modules are Deeper

### Chapter 7 - Different Layer, Different Abstraction

### Chapter 8 - Pull Complexity Downwards

### Chapter 9 - Better Together Or Better Apart?

### Chapter 10 - Define Errors Out Of Existence

### Chapter 11 - Design it Twice

### Chapter 12 - Why Write Comments? The Four Excuses

### Chapter 13 - Comments Should Describe Things that Aren't Obvious from the Code

### Chapter 14 - Choosing Names

### Chapter 15 - Write the Comments First

### Chapter 16 - Modifying Existing Code

### Chapter 17 - Consistency

### Chapter 18 - Code Should be Obvious

### Chapter 19 - Software Trends

### Chapter 20 - Designing for Performance

### Chapter 21 - Conclusion

## Interesting thoughts


## Great quotes
 - "Your job as a developer is not just to create code that you can work with easily, but to create code that others can also work with easily." - pg6
 - "One of the most important goals of good design is for a system to be *obvious*." - pg9
 - "The first step towards becoming a good software designer is to realize that **working code isn't enough**. - pg14

## Actionable items


## Summary


