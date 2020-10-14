require 'pry'
class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity[0..1].to_i
    @products = []
    @is_full = false
  end

  def add_product(new_product)
    @products << new_product
  end

  def details
    {
    name: @name,
    capacity: @capacity
    }
  end

  def total_number_of_products
    @products.map.sum do |product|
      product.quantity
    end
  end

  def is_full?
     @is_full

  end

end
