# A Philosophy of Software Design
![https://www.amazon.com/Philosophy-Software-Design-John-Ousterhout/dp/1732102201](https://images-na.ssl-images-amazon.com/images/I/51t2s-WNb3L._SX405_BO1,204,203,200_.jpg)

Author: John Ousterhout

Date Finished: 8/5/2021

Genres: Software Design, Tech

Notes Status: Done

Quick Description: Leasons learned exploring the dos and don'ts of creating workable software.

Rating: A


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
I need to think a lot deeper about what was described in this chapter. Information hidding makes a lot of sense with deep modules and something I'll need to continue to focus on. I tend to fall into the trap that the book describes of writing the code as a set of steps, do this and then this and then this. That builds a lot of small functions that don't do a lot of abstraction and are tough to maintain and understand. Instead focus on what knowledge is needed between modules to accomplish tasks and hide what can be hidden. Be careful about modules that rely on information sharing between them as this makes them dependent on eachother and tough to update. This is unavoidable but should be limited as much as possible. The chapter also points out that the typical most used path for modules should be the default path. Make the usual case the one that they default to and so the typical user doesn't have to think or know about edge cases.

### Chapter 6 - General-Purpose Modules are Deeper
This is exactly opposite of what I have been taught but it makes a lot of sense and carries on what he is arguing previously. Make your modules sort of general purpose. There's kind of an art to determining how general vs how specialized but you don't want a ton of single specialized routines. This goes against the Unix philosophy a bit but I think I'm seeing why you don't want this. It's similar to the having just a ton of micro services, eventually it becomes too much to control and understand. There's nothing wrong with breaking things down but think about at what layers and how general you can make the interfaces that are used.

### Chapter 7 - Different Layer, Different Abstraction
I think I understand this chapter and it probably points to some of my problems with current projects I've developed. Focus should be placed on building a solution with layers of abstraction. Each layer is focused on doing specific types of things. You need to avoid creating similar methods that are in the same layer that don't actually do anything (pass things on). One piece that he really hits on at the end of this chapter is something I have seen a lot of with work, the pass through variables problem. Variable A is set and then passed on through multiple functions before it is finally used. There is no easy solution to this but it should be tried to avoid. The code at work we have tried to fix this with the suggestion he has in using a context class (Report Class in work code). Need to be careful though as I think we have hit what he warns about where the context class just becomes a grab bag of variables. Need to think about is there a better logical spot or are they truly needed and how to group them if they are.

### Chapter 8 - Pull Complexity Downwards
Pain now saves later. Pulling complexity downwards into the code you're working with save effort understanding it's intentions and removes pain for others using it. A great example that plagues software development these days are configuration parameters. Taking the easy way out to a decision is to just paramertize it, force the user or implementor to make the decision. It's easy to fool yourself into thinking that's what is best as the user will know better but really it forces a lot of decisions on the user that usually they have no idea or adds to complexity. Including it adds the need to document the parameter and explain what it does, and that usually goes out of date instantly and is often wrong. Do the work upfront.

### Chapter 9 - Better Together Or Better Apart?
This one came down to a lot of as experience grows you start to learn what works best. Try to pull together things that make sense together and makes the interface as easy as possible while hiding complexity that isn't needed to be seen by the user.

### Chapter 10 - Define Errors Out Of Existence
Exceptions are usually to handle special cases. They add a ton of code that is rarely run and hard to maintain, adding complexity. To solve this write your code in a way where those exceptions are no longer needed. Make it impossible to get into the special case scenario instead of trying to handle the special case. When all else fails, just error out. Don't get too crazy with exceptions.

### Chapter 11 - Design it Twice
Short chapter with a solid point. Take time with determining your design. Don't always go with your first idea. Take an hour or two and think of another possibility for the design. Compare the two designs and point out pros and cons of each. Even if it's obvious which on is better this will only strengthen your confidence and understanding of your idea.

### Chapter 12 - Why Write Comments? The Four Excuses
Really a solid argument on why to write comments. I embarrasingly was in the camp that good code should be self documenting and that comments just get in the way / confuse people. He tore that thought apart by pointing out that what I'm really saying is someone in order to understand my code should read all my code and also know what I was thinking at the time I was coding things. It also causes my code to become small functions that increases complexity in order to try and show what I was coding. Instead a great approach is just use some comments to explain your thinking to keep interfaces small and the methods deeper.

### Chapter 13 - Comments Should Describe Things that Aren't Obvious from the Code
A really big point in this chapter that I feel I need to take to my code is the interface comments should focus on what information is needed to make the method work, not how it works. The main trick is trying to approach the comments thinking as if you're someone looking at the code for the first time, what would you need to know so that what the code does is obvious. 

### Chapter 14 - Choosing Names
Nothing too deep in this chapter. A major and underrated part of coding is determing names for variables. This chapter makes the statement that I agree with that using more descriptive names and spending a little extra time determining it will be a huge win in the long term. I didn't know that the Go community appears to go the opposite way in saying that shorter names are easier to ready and I can get their point if they have small Unix size functions. Which we already have seen this book argues against.

### Chapter 15 - Write the Comments First
Writing the comments first is a design approach that has the added benefits of slowing you down to think through what you're planning to make and also in the end you have things documented. It's a good suggestion.

### Chapter 16 - Modifying Existing Code
Skimming the chapters now but getting bits of it. This chapter makes sense that avoid the instinct to make code changes quick and fast to fix bugs / add features but instead truly understand the design. When fixing something take the time to think, can this design improve and then make the improvement.

### Chapter 17 - Consistency
Pretty straight forward but a tough thing to follow, write code in a consistent manner. I think the big takeaway from this chapter is that avoid changing already existing code that is written in a consistent manner into a different manner that you feel is "better". Consistent code is far more important than trying to get everything to match your one specific approach. Make sure to get a feel of how the current code works and is written.

### Chapter 18 - Code Should be Obvious
Interesting note on this chapter is his point about Event Driven architecture not being obvious. I agree with that and it's interesting that that architecture is growing. I get why it is and the benefits of it but wondering how complex certain applications will become if not properly documented.

### Chapter 19 - Software Trends
This was a brain dump of thoughts on different topics but it was interesting to hear. I expecially liked hearing his points on Agile and Unit Tests. He pointed out something that I think a lot of developers have been struggling with. The agile sprints pushes the focus to much on small slices of code change. In theory it sounds great but it makes the code a mess as their is no time spent on overal design of the code. You end up with small changes throughout and that makes tactical coding instead of strategic. Incremental development is great but it should be with a design in mind and that should incrementally improve as well. The last point is that Unit Tests are great but Test Driven Development is not as that also pushes tactical coding.

### Chapter 20 - Designing for Performance
Skipped through this chapter. Getting to the end of the book and this was a complex deep chapter that didn't catch my interest. Main point was simplicity and performance go together. You don't want to go overboard with focusing on performance as you build something but you also don't want to ignore it. It's finding that middle land where you keep it in mind but you also don't not make something because it needs to be perfect.

### Chapter 21 - Conclusion
Nice summary of the book. Reiterated that the main goal is removing complexity. Everything described in the book is focused on making things simplier to understand and maintain. 

## Interesting thoughts
It has a summary of design principles that is pretty good:
1. Complexity is incremental: you have to sweat the small stuff.
2. Working code isn't enough.
3. Make continual small investments to improve system design.
4. Modules should be deep.
5. Interfaces should be designed to make the most common usage as simple as possible.
6. It's more important for a module to have a simple interface than a simple implementation.
7. General-purpose modules are deeper.
8. Separate general-purpose and special-purpose code.
9. Different layers should have different abstractions.
10. Pull complexity downward.
11. Define errors (and special cases) out of existence.
12. Design it twice.
13. Comments should describe things that are not obvious from the code.
14. Software should be designed for ease of reading, not ease of writing.
15. The increments of software development should be abstractions, not features.

## Great quotes
 - "Your job as a developer is not just to create code that you can work with easily, but to create code that others can also work with easily." - pg6
 - "One of the most important goals of good design is for a system to be *obvious*." - pg9
 - "The first step towards becoming a good software designer is to realize that **working code isn't enough**." - pg14
 - "When designing modules, focus on the knowledge that's needed to perform each task, not the order in which tasks occur." - pg32
 - "it is more important for a module to have a simple interface than a simple implementation." - pg55
 - "The overall idea behind comments is to capture information that was in the mind of the designer but couldn't be represented in the code." - pg98
 - "The only way to describe an abstraction is with comments. If you want code that presents good abstractions, you must document those abstractions with comments." - pg110
 - "If you're not making the design better, you're probably making it worse." - pg136
 - "software should be designed for ease of reading, not ease of writing." - pg148
 - "**Developing incrementally is generally a good idea, but the increments of development should be abstractions, not features.**"
 - "The reward for being a good designer is that you get to spend a larger fraction of your time in the design phase, which is fun. Poor designers spend most of their time chasing bugs in complicated and brittle code." - pg170

## Actionable items
- Write better comments and write them first
- Focus on creating interfaces between things and methods that are deep (not just focusing on chopping everything up into little Unix style functions where things have one job)

## Summary
Solid book. I learned a lot about how to approach Software design. For being a shortish book it went deep into topics. I highly enjoyed it. Main point of the book is on removing complexity and it talks about all sorts of ways to avoid complexity and make things simplier.
