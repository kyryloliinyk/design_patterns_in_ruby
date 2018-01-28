# Base composite
# Abstract class for composite orders,
# that is inherited from base Order class
class CompositeOrder < Order
  # Complements base Order initialize-behavior
  # and creates empty array of sub-orders
  # that will be included
  def initialize(item_id)
    super(item_id)
    @sub_orders = []
  end

  # Provides ability to add sub-orders
  def add_order(order)
    @sub_orders << order
  end

  # Defines 'total' method that is required by Order class
  def total
    # Delegates 'total' message to all included sub-orders
    # and calculates sum
    @sub_orders.map(&:total).sum
  end
end
