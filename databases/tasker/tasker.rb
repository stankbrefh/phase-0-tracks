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

end

test = Tasker.new
# test.add_task("Chores", "Clean room")
# test.complete_task("Chores")
# test.delete_task("Chores")
# test.clear_all