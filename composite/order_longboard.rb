# Composite
class OrderLongboard < CompositeOrder
  def initialize(item_id)
    super(item_id)
    add_order OrderDeck.new(longboard.deck_id)
    add_order OrderWheels.new(longboard.wheels_id)
    add_order OrderTruck.new(longboard.truck_id)
    add_order OrderGripTape.new(longboard.grip_tape_id)
    add_order OrderBearings.new(longboard.bearings_id)
  end

  private

  def longboard
    @longboard ||= Longboard.find(@item_id)
  end
end
