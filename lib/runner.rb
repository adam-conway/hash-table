require_relative 'hash_table'
require 'pry'

hash_table = HashTable.new()
hash_table.put(678, "Adam is great")
hash_table.put(658, "Adam is not great")
hash_table.put(674, "Adam is great")
hash_table.print_stuff
