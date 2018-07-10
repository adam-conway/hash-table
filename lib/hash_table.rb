require './lib/linked_list_item'
require 'pry'

class HashTable
  attr_reader :table
  def initialize
    @table = {
      0 => nil,
      1 => nil,
      2 => nil,
      3 => nil,
      4 => nil,
      5 => nil,
      6 => nil,
      7 => nil,
      8 => nil,
      9 => nil
    }
  end

  def put(key, value)
    mod = key % table.count
    if @table[mod] == nil
      @table[mod] = LinkedListItem.new(key, value)
    else
      list_location = @table[mod]
      until list_location.child.nil?
        list_location = list_location.child
      end
      list_location.child = LinkedListItem.new(key, value)
    end
  end
end
