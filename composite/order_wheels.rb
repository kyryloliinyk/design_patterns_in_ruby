# Leaf
class OrderWheels < Order
  def initialize(item_id)
    super(item_id)
  end

  def total
    WheelsSupplier.get_price(@item_id)
  end
end
