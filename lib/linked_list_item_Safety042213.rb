class LinkedListItem
attr_reader :next_list_item
  attr_reader :payload
  
  def initialize( payload )
  	@payload = payload
  end
  
  def next_list_item= (linked_list_item)
  if linked_list_item == self
  raise ArgumentError, "Item cannot be linked to itself" 
  end
    @next_list_item = linked_list_item
  end

  def last?
    @next_list_item.nil?
  end
end