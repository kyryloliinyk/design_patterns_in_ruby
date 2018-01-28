# Leaf
# Concrete Order class
class OrderWheels < Order
  # Defines 'total' method that is required by Order class
  def total
    # Has some business logic to calculate 'total'
    # For example, fetches data from supplier api
    WheelsSupplier.get_price(@item_id)
  end
end
