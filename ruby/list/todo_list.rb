class TodoList

  def initialize(arr)
  	@arr = arr
  end

  def get_items
    @arr
  end

  def add_item(item)
  	@arr << item
  end

end