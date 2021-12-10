require 'todo_app'

describe TodoApp do
  it 'should ask the user for input' do
    app = TodoApp.new
    expect { app.prompt }.to output("What would you like to do?\nType `add`, followed by a sentence, to add a todo.\nType `done`, followed by the todo ID, to complete a todo.\n").to_stdout 
  end

  it 'should store todos in a list' do
    app = TodoApp.new
    app.add("Pump bike tyres")
    expect(app.todolist).to include("Pump bike tyres")
  end
end