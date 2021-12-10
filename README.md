## Code Review 10/12/2021

ACME todo inc.
Command Line Todo Apps
Enable user to add and complete todos 

USER INPUT | OUTPUT
------|-------

add("todo") | Show list / What would you like to do? 
Inaccurate commands | Return existing todos and prompt

Further edge cases: 
* ADD / DONE in caps
* What output when todo list is empty
* Spelling mistakes

Prompt: 
What would you like to do?\n
Type `add`, followed by a sentence, to add a todo.\n
Type `done`, followed by the todo ID, to complete a todo.\n


####  Pseudo code:
* While loop What would you like to do? 
* if 'add' String 
* push String to do Array 
* puts all items to console
* prompt
* if 'done' todo ID 
* delete String from the array - find the string via ID
* Ask input again

#### Domain Model
```
Class TodoApp

.add(todo)
.done(todoID)
.prompt --> loop

TODO ID = index + 1

while true loop:
What would you like to do? 
Type `add`, followed by a sentence, to add a todo. 
Type `done`, followed by the todo ID, to complete a todo.
```


