class LinkedListItem
  attr_accessor :child
  attr_reader   :data
  
  def initialize(key, value)
    @child = nil
    @data = {key => value}
  end
end
