# Refactoring
![](https://trello-attachments.s3.amazonaws.com/571faf90b064481105918013/381x499/831b674fcbb9899afad8cd81b8f82778/41LBzpPXCOL._SX379_BO1%2C204%2C203%2C200_.jpg)

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
