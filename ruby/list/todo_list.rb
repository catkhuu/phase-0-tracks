# Our todo list should...
# store the list items given on initialization
# add an item to the list
# delete an item
# retrieve an item by index


class TodoList
  def initialize(x)
    @x = ["do the dishes", "mow the lawn"]
  end

  def get_items
    @x
  end

  def add_item(y)
    @x.push(y)
  end

  def delete_item(z)
    @x.delete(z)
  end

  def get_item(n)
    @x.at(n)
  end
end
