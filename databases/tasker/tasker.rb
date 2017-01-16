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
    @db.execute("INSERT INTO tasks (task, description, completed) VALUES (?, ?, 'false')", [task, description])
    puts "Task successfully added!"
    main_menu
  end

  def complete_task
    puts "COMPLETE A TASK"
    puts "Enter the number of the task to be completed"
    id = gets.to_i
    @db.execute("UPDATE tasks SET completed = 'true' WHERE id = ?", [id])
    puts "Task successfully completed! Great job!"
    main_menu
  end

  def update_task
    puts "UPDATE A TASK'S DESCRIPTION"
    puts "Enter the number of the task to be updated"
    id = gets.to_i
    puts "Enter a new description for the task"
    description = gets.chomp.downcase.capitalize
    @db.execute("UPDATE tasks SET description = ? WHERE id = ?", [description, id])
    puts "Task successfully updated!"
    main_menu
  end

  def delete_task
    puts "REMOVE A TASK"
    puts "Enter the number of the task to be removed:"
    id = gets.to_i
    @db.execute("DELETE FROM tasks WHERE id = ?", [id])
    puts "Task successfully removed!"
    main_menu
  end

  def clear_all
    puts "DELETE ALL TASKS"
    puts "Once complete, the program will exit.\nAre you sure you want to permanently delete ALL tasks? (y/n)"
    answer = gets.chomp.downcase
    answer == 'y' ? @db.execute("DROP TABLE tasks") : main_menu
    puts "Successfully delete ALL tasks!"
    exit
  end

  def show_all
    puts "=" * 40
    puts "Current Tasks:"
    tasks = @db.execute("SELECT * FROM tasks")
    tasks.each do |task|
      task['completed'] == 'true' ? completed = "[x]" : completed = "[ ]"
      puts "#{task['id']}. #{task['task']} - #{task['description']} " + completed
    end
    puts "=" * 40
    main_menu
  end

  def main_menu
    puts "\nMAIN MENU"
    puts "What would you like to do?"
    puts "'v': view current tasks."
    puts "'a': add a new task."
    puts "'u': update the description of a task."
    puts "'c': complete a task."
    puts "'r': remove a task."
    puts "'x': delete all tasks."
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
    puts "********* WELCOME TO TASKER 1.0 ********"
    show_all
  end
end

Tasker.new.run