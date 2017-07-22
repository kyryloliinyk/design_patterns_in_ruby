# Base composite
class CompositeOrder < Order
  def initialize(item_id)
    super(item_id)
    @sub_orders = []
  end

  def add_order(order)
    @sub_orders << order
  end

  def total
    @sub_orders.map(&:total).sum
  end
end
