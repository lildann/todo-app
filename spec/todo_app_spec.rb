require 'todo_app'

describe TodoApp do
  let(:app) { TodoApp.new }

  it 'should ask the user for input' do
    expect { app.prompt }.to output("What would you like to do?\nType `add`, followed by a sentence, to add a todo.\nType `done`, followed by the todo ID, to complete a todo.\n").to_stdout 
  end

  it 'should store todos in a list' do
    expect { app.add("Pump bike tyres") }.to output("1 Pump bike tyres\n").to_stdout
    expect(app.todolist).to include("Pump bike tyres")
  end

  it 'should remove a todo when instructed as done' do
    app.add("Pump bike tyres")
    app.done("1")
    expect(app.todolist).not_to include("Pump bike tyres")
  end

  it 'should return a message if todolist is empty' do
    app.add("Pump bike tyres")
    expect { app.done("1") }.to output("No items in the Todo List\n").to_stdout
  end


end