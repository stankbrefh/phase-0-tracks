require_relative 'todo_list'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
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