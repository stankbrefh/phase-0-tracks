require 'sqlite3'

class Tasker

  def initialize
    @db = SQLite3::Database.new("tasks.db")
    @db.results_as_hash = true    
    create_table_cmd = <<-SQL
      CREATE TABLE IF NOT EXISTS tasks(
        id INTEGER PRIMARY KEY,
        task VARCHAR(255),
        description VARCHAR(255),
        completed BOOLEAN
      )
      SQL
    @db.execute(create_table_cmd)
  end

  def add_task(task, description)
    @db.execute("INSERT INTO tasks (task, description, completed) VALUES ('#{task}', '#{description}', 'false')")
  end

  def complete_task(task)
    @db.execute("UPDATE tasks SET completed = 'true' WHERE task = '#{task}'")
  end

  def delete_task(task)
    @db.execute("DELETE FROM tasks WHERE task = '#{task}'")
  end

  def clear_all()
    @db.execute("DROP TABLE tasks")
  end

  def show_all()
    counter = 1
    tasks = @db.execute("SELECT * FROM tasks")
    tasks.each do |task|
      task['completed'] == 'true' ? completed = "[x]" : completed = "[ ]"
      puts "#{counter}. #{task['task']} - #{task['description']} " + completed
      counter += 1
    end
  end

  def intro
    puts "****** Welcome to Tasker 1.0 ******"
  end

  def main_menu
    puts "Main Menu\nWhat would you like to do?"
    puts "'v': view current tasks."
    puts "'a': add a new task."
    puts "'u': update a task."
    puts "'c': complete a task."
    puts "'r': remove a task."
    puts "'x': clear all tasks."
    puts "'q': quit the program."
    @selection = gets.chomp.downcase
  end

  def run
    intro
    main_menu
    case
    when @selection == 'a' then
    when @selection == 'u' then
    when @selection == 'c' then
    when @selection == 'r' then
    when @selection == 'x' then
    when @selection == 'q' then exit
    else
      puts "Oops! Please select from the listed options"
    end
  end
end

# test = Tasker.new
# test.add_task("Homework", "Read Chapters 1-3")
# test.complete_task("Homework")
# test.delete_task("Chores")
# test.clear_all
# test.show_all

Tasker.new.run