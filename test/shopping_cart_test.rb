require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

class ShopingCartTest < Minitest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_attributes_of_shopping_cart
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal 'King Soopers', cart.name
    assert_equal 30, cart.capacity
  end

  def test_products_array_starts_empty
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal [], cart.products
  end

  # def test_can_add_product_instances_to_products_array
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #   product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
  #   product2 = Product.new(:meat, 'chicken', 4.50, '2')
  #   cart.add_product(product1)
  #   cart.add_product(product2)
  # end

end
