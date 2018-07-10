require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/hash_table.rb'

class HashTableTest < Minitest::Test
  def test_it_exists
    hash_table = HashTable.new()
    empty_table = {
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
    assert_instance_of HashTable, hash_table
    assert_equal (empty_table), hash_table.table
  end

  def test_it_can_insert
    hash_table = HashTable.new()
    hash_table.put(678, "Adam is great")
    hash_table.put(658, "Adam is not great")
    hash_table.put(674, "Adam is great")

    assert_equal ([674]), hash_table.table[4].data.keys
    assert_nil hash_table.table[4].child
    assert_instance_of LinkedListItem, hash_table.table[4]

    assert_equal ([678]), hash_table.table[8].data.keys
    assert_equal ([658]), hash_table.table[8].child.data.keys
  end

  def test_it_can_get_value
    hash_table = HashTable.new()
    hash_table.put(678, "Adam is great")
    hash_table.put(658, "Adam is not great")
    hash_table.put(674, "Adam is great")

    assert_equal ("Adam is great"), hash_table.get(678)
    assert_equal ("Adam is not great"), hash_table.get(658)
    assert_equal ("Adam is great"), hash_table.get(674)
  end
end
