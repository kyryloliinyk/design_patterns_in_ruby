# Base class
class BaseLongboard
  def initialize(deck:, truck:, wheels:)
    @deck = deck
    @truck = truck
    @wheels = wheels
  end

  def price
    @deck.price + @truck.price + @wheels.price
  end

  def equipment
    {
      deck: @deck.name,
      truck: @truck.name,
      wheels: @wheels.name
    }
  end

  def base_object_behavior
    #code
  end
end
