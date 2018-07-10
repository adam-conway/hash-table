require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list_item.rb'

class LinkedListItemTest < Minitest::Test

  def test_it_exists
    linked_list_item = LinkedListItem.new()
    assert_instance_of LinkedListItem, linked_list_item
    assert_nil linked_list_item.child
    assert_equal ({}), linked_list_item.data
  end


end
