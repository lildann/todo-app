class TodoApp
  attr_reader :todolist

  def initialize
    @todolist = []
  end

  def prompt
    print "What would you like to do?\nType `add`, followed by a sentence, to add a todo.\nType `done`, followed by the todo ID, to complete a todo.\n"
  end

  def add(todo)
    @todolist << todo
    @todolist.map.with_index { |todo, index| puts "#{index + 1}" + " " + "#{todo}" }
  end



end