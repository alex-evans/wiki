# Refactoring
![](https://trello-attachments.s3.amazonaws.com/571faf90b064481105918013/381x499/831b674fcbb9899afad8cd81b8f82778/41LBzpPXCOL._SX379_BO1%2C204%2C203%2C200_.jpg)

## Status
**Reading**

## Recap
ToDo when done

## Notes
- Great quote that sums up a great way to approach coding:

    *Any fool can write code that a computer can understand. Good programmers write code that humans can understnd.*

- First thing to do when starting any major refactoring is to create automated tests. This will help with being confident with the code as you change it and greatly reduce bugs.

    *It's an important habit to test after every refactoring, however simple.*

- He has a quick note about doing local git checkins after every change as a private method to keep track of changes but then when commiting to the full on public repo to mesh all of those into one commit. I should look into doing that.

- This is a great point, this day and age we shouldn't be afraid to this but for my work I need better tests to truly be able to trust things but usually the editors will find errors. 

    *Never be afraid to change names to improve clarity*

- (pg.14) He's going through an example on removing local variables to call a function multiple times instead. I don't know if I agree. He mentions it may be more inefficent but that it helps with his refactoring. I think I see where it helps pull things a part so maybe there is something to it but if you have to keep it the way it was I'd rather read a local variable vs go find and look at a function again (unless of course you name it well)

- *But most of the time, rerunning a loop like this has a neglibible effect on performance.*

    I struggle a bit with this one but it's probably true. I've always been taught do everything you can in a single loop. But he's pushing that if you are doing multiple things in a single loop it is a ton easier to split it into multiple loops. At what point does this become too many loops though. What if you have 5 things you need to do in that loop? I find this one a bit strange but if there are steps farther that then take this code down to a very simple thing to read I can see the gain but until then I'm not a fan.

- *I prefer to treat data as immutable as much as I can - mutable state quickly becomes something rotten.* (pg27)

- *Always leave the code base healthier than when you found it. It will never be perfect, but it should be better.* (pg34)

- **06/22/20 Night's Reflection:** When doing a refactor it is important to take small steps over and over again. After each small step you test to make sure everything is still working and then you move on. With each step you are also freeing up your brain and the code to make it easier to move around. I see this as a sort of puzzle piece you're turning pushing trying and things slowly get rearranged and then come back together. You can be wrong and tweak it some more but eventually you get things together.

    *But it's kinder to my future self to leave a toumbstone.* (pg40)
        
        Why? Don't you want it gone forever so you don't want to ever think about it again? I find this statement a little strange but I guess if you are use to your coding methods or worried it will pop up again / wonder why you didn't try to do it a certain way it can be left as a warning / acknoledgement of what it use to be (I still feel that'd be captured in version control).
    
    *the true test of good code is how easy it is to change it.* (pg43)
    
    *the rhythm of refactoring* (pg44)

    *The key to effective refactoring is recognizing that you go faster when you take tiny steps, the code is never broken, and you can compose those small steps into substantial changes.* (pg44)

    Points to a heavy need of having great tests.

- **06/24/20 Night's Reflections:** The wearing two hats made a lot of sense to me and has a bit of the TDD to it but it's more of instead of *red, yellow, green (repeat)* it is *red, yellow, red, yellow, red, yellow, green (repeat)*. It also hit me that he is really saying the outcome does not change (for the most part). Seeing a bug, make note of it but don't fix it until you're out of the refactoring mode. I like the idea of design of code improving over time. It is a break from the waterfall, get everything right the first time (slow / never right), approach. Even good code needs refactoring over time. Long term refactoring seems to actually need a goal in mind as well. Improve the code / add feature but give more time to refactor as you do it.

    **Refactoring** *(noun): a change made to the internal structure of software to make it easier to understand and cheaper to modify without changing its obserable behavior.*

    **Refactoring** *(verb): to restructure software by applying a series of refactorings without changing its observable behavior.*

    *So I might spend a couple of hours refactoring, during which I would apply a few dozen individual refactorings.*

    *Maudite* = beer (I think)

    *"I'm not a great programmer; I'm just a good programmer with great habits." - Kent Beck*

    *Refactoring helps me develop code more quickly*

    *Design Stamina Hypothesis [mf-dsh]: By putting our effort into a good internal design, we increase the stamina of the software effort, allowing us to go faster for longer.*

    *by refactoring I move the understanding from my head into the code itself.*

    *I don't put time on my plans to do refactoring; most refactoring happens while I'm doing other things.*

    *"for each desired change, make the change easy (warning: this may be hard), then make the easy change" - Kent Beck*

- **06/26/20 Night's Relfections:** This portion really hammered home the need for tests. Without tests you can't really refactor and without refactoring you're stuck with whatever popped into your head originally that solved the problem. This usually means way too much code and code that is unreadable. He made a point that refactoring needs to just be a part of how you produce code. It's never a question, it's how you get things done. There's no question on if we just get something done or do we spend time on refactoring, we just do it. This will make us faster in the long run. If you have a manager or company that doesn't support or understand that than you just don't tell them, you build it into your coding process and in the long run you are actually faster. He also had some good points on how to as a team handle refactoring if you're working in branches. Really if you're all running off in your own branch and not bringing code back together until it's done you're going to have a mess. He suggests every day doing a integration (not just a merge but pull and push all code changes). This would keep the master branch full of everyone's current on going changes. You might have to use feature off/on switches but it'll keep the code stronger in the long run. Interesting stuff, and probably not something I'd push on my team currently but something to keep in the back of my mind as the team grows. Right now the team is so focused on different pieces of code that we don't hit many issues with this. I wonder what size team this eventually becomes a problem. Even back when Tom and I were both working on Meditech code we rarely hit eachother in the same code. 

    *I can only think of so many good ideas in a week. Having other people contribute makes my life easier, so I always look for reviews.*

    We are lacking reviews currently at work. Something to remind myself is this quote.

    *I'm being paid for my experties in programming new capabilities fast, and the fastest way is by refactoring - therefore I refactor.*

    *We refactor because it makes us faster - faster to add features, faster to fix bugs. It's important to keep that in front of your mind and in front of communication with others.*

    *With CI, each team member integrates with mainline at least once per day.*

    *You should also consider the objective evidence [Forsgren et al.] that teams that use CI are more effective in software delivery.*

    I made note of this about CI but more in the sense that teams that are touching the same code need to constantly integrate their code back into master (daily).

    *This means that in most cases, if I want to refactor, I need to have self-testing code [mt-stc].*

    *Working Effectively with Legacy Code [Feathers]* Future book to possibly consider
