# Component
class Order
  def initialize(item_id)
    @item_id = item_id
  end

  def total
    raise NotImplementedError
  end
end
