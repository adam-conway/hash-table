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
    if table[mod] == nil
      table[mod] = LinkedListItem.new(key, value)
    else
      list_location = table[mod]
      until list_location.child.nil?
        list_location = list_location.child
      end
      list_location.child = LinkedListItem.new(key, value)
    end
  end

  def get(key)
    mod = key % table.count
    location = table[mod]
    if location == nil
      puts "Not found" and return
    else
      location = location.child until location.data[key]
    end
    location.data[key]
  end

  def print_stuff
    table.each_key do |key|
      puts "#{key}->"
      next if table[key].nil?
      location = table[key]
      until location.nil?
        puts location.data.keys[0].to_s + ","
        location = location.child
      end
    end
  end

end
