require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload)
    next_item = LinkedListItem.new(payload)
  if @first_item.nil?
     @first_item = next_item
  else
    final_item = @first_item
  while !final_item.last?
    final_item = final_item.next_list_item
  end
    final_item.next_list_item = next_item
  end
end

def get(n)
    i = 0
    item = @first_item
    while i < n
    raise IndexError if item.nil?
      item = item.next_list_item
    i += 1
    end
      item.payload
end


def last
    item = @first_item
    return nil if item.nil?
    while !item.last?
      item = item.next_list_item
    end
      item.payload
end

def size
    item = @first_item
    return 0 if item.nil?
    i = 1
    while !item.last?
      item = item.next_list_item
    i += 1
    end
    i
end

def to_s
    if size == 0
      "| |"
    else
      items = []
      item = @first_item
      while item
        items << item.payload
        item = item.next_list_item
      end
      output = "| "
      output += items.join(", ")
      output += " |"
    end
end

def indexOf(container)
  i = 0
  item = @first_item
    return nil if item.nil?
  if item.payload == container
    return i
  end
  while !item.last?
    item = item.next_list_item
    if item.payload == container
      return i + 1
    end
    i += 1
  end
end

  # ========= Bonus ========== #

  def [](payload)

  end

  def []=(n, payload)

  end

  def remove(n)

  end

end
