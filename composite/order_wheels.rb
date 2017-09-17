# Leaf
class OrderWheels < Order
  def total
    WheelsSupplier.get_price(@item_id)
  end
end
