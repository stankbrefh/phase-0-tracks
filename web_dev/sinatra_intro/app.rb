# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years young."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# RELEASE 0: Add Routes
# write a GET route that retrieves
# an address
get '/contact' do
  "Address:<br>
  707 Broadway<br>
  Suite 800<br>
  San Diego, CA 92101<br>"
end

# write a GET route with
# a person's name as a query parameter
get '/great_job' do
  name = params[:name]
  name ? "Good job, #{name}!" : "Good job!"
end

# write a GET route that retrieves
# route parameters to add two numbers and respond with the result
get '/:a/plus/:b' do
  sum = params[:a].to_i + params[:b].to_i
  sum.to_s
end

# write a GET route that
# allows the user to search the database
get '/students/search/:query_type/:query' do
  query_type = params[:query_type]
  query = params[:query]
  students = db.execute("SELECT * FROM students WHERE #{query_type}=?", query)
  response = ''
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end