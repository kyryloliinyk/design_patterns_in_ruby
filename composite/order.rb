# Component
# Abstract Order base class
# that uses Template method to define exact classes' behavior
class Order
  def initialize(item_id)
    @item_id = item_id
  end

  # Expects all inherited concrete classes
  # to respond on 'total' message
  def total
    raise NotImplementedError
  end
end
