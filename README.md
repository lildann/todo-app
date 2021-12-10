## Code Review 10/12/2021

ACME todo inc.
Command Line Todo Apps

Enable user to add and complete todos 

INPUT | OUTPUT
------|-------
Prompt: 
What would you like to do? 
Type `add`, followed by a sentence, to add a todo. 
Type `done`, followed by the todo ID, to complete a todo.

Inaccurate commands | Return existing todos and prompt

What would you like to do? 
Type `add`, followed by a sentence, to add a todo. 
What would you like to do? 
Show list 
Type `done`, followed by the todo ID, to complete a todo.
What would you like to do? 

While loop What would you like to do? 
if 'add' String 
  push String to do Array 
  puts all items to console
Ask input again
if 'done' todo ID 
  delete String from the array - find the string via ID
Ask input again

TODO ID = index + 1

Class TodoApp

.add(todo)
.done(todoID)

while true loop:
What would you like to do? 
Type `add`, followed by a sentence, to add a todo. 
Type `done`, followed by the todo ID, to complete a todo.



