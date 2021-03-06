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

  def test_can_add_product_instances_to_products_array
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    assert_equal [product1, product2], cart.products
  end

  def test_cart_details
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal ({name: "King Soopers", capacity: 30}), cart.details
  end

  def test_total_if_cart_is_full
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    assert_equal 13, cart.total_number_of_products
    refute cart.is_full?
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    cart.add_product(product4)
    # assert cart.is_full?
  end
end
