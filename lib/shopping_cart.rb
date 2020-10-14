class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity[0..1].to_i
    @products = []
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
end
