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

  def add_task
  	puts "ADD A TASK"
    puts "Enter a title for the task:"
    task = gets.chomp.downcase.capitalize
    puts "Add a brief description:"
    description = gets.chomp.downcase.capitalize
    @db.execute("INSERT INTO tasks (task, description, completed) VALUES ('#{task}', '#{description}', 'false')")
    puts "Task successfully added!"
    main_menu
  end

  def complete_task
    puts "COMPLETE A TASK"
    puts "Enter the title of the task to be completed"
    task = gets.chomp.downcase.capitalize
    @db.execute("UPDATE tasks SET completed = 'true' WHERE task = '#{task}'")
    puts "Task successfully completed! Great job!"
    main_menu
  end

  def update_task
    puts "UPDATE A TASK'S DESCRIPTION"
    puts "Enter the title of the task to be updated"
    task = gets.chomp.downcase.capitalize
    puts "Enter a new description for the task"
    description = gets.chomp.downcase.capitalize
    @db.execute("UPDATE tasks SET description = '#{description}' WHERE task = '#{task}'")
    puts "Task successfully updated!"
    main_menu
  end

  def delete_task
    puts "REMOVE A TASK"
    puts "Enter the number of the task to be removed:"
    id = gets.to_i
    @db.execute("DELETE FROM tasks WHERE id = '#{id}'")
    puts "Task successfully removed!"
    main_menu
  end

  def clear_all
  	puts "CLEAR ALL TASKS"
  	puts "Are you sure you want to remove ALL tasks? (y/n)"
  	answer = gets.chomp.downcase
    answer == 'y' ? @db.execute("DROP TABLE tasks") : main_menu
    puts "Successfully cleared ALL tasks!"
    main_menu
  end

  def show_all
    counter = 1
    tasks = @db.execute("SELECT * FROM tasks")
    tasks.each do |task|
      task['completed'] == 'true' ? completed = "[x]" : completed = "[ ]"
      puts "#{task['id']}. #{task['task']} - #{task['description']} " + completed
      counter += 1
    end
    main_menu
  end

  def main_menu
    puts "MAIN MENU\nWhat would you like to do?"
    puts "'v': view current tasks."
    puts "'a': add a new task."
    puts "'u': update a task."
    puts "'c': complete a task."
    puts "'r': remove a task."
    puts "'x': clear all tasks."
    puts "'q': quit the program."
    selection = gets.chomp.downcase
    case selection
    when 'v' then show_all
    when 'a' then add_task
    when 'u' then update_task
    when 'c' then complete_task
    when 'r' then delete_task
    when 'x' then clear_all
    when 'q' then exit
    else
      puts "Oops! Please select from the listed options"
      main_menu
    end
  end

  def run
    puts "****** WELCOME TO TASKER 1.0 ******"
    main_menu
  end
end

Tasker.new.run