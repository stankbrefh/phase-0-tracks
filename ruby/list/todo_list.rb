class TodoList

  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(item)
    @array << item
  end

  def delete_item(item)
    @array.delete(item)
  end

  def get_item(index)
    @array[index]
  end

end

# RSpec Test Components

# `describe` sections are the basic building blocks to organize your tests into logical, 
# coherent groups to test. Basically, they are a scope for different parts of your 
# application that you want to test.

# Within the scope of `describe` groups, we use another scope of `it` blocks. These are made
# for the actual examples under test, or test cases. The string that you provide to the `it`
# block works as the main documentation for your test. Within it, you specify exactly what 
# kind of behavior you want or expect from the current method.

# `expect(...).to` is used to define expected outcomes. `expect(...).to` expects that you 
# provide it with an object and exercise whatever method under test on it. The Ruby expression
# given is combined with a matcher to fully define an expectation on a piece of code. The matcher
#  we are using here is `eq`, a basic equality matcher; RSpec comes with many more matchers.