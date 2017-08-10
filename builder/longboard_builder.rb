class LongboardBuilder
  def initialize(rider_level:, length:, width:)
    @rider_level = rider_level
    @width = width
    @length = length
    @attributes = {}
  end

  def wheels=(size)
    @attributes[:wheels] = Wheels.new(size: size, type: @rider_level)
  end

  def trucks=(type)
    @attributes[:trucks] = Trucks.new(type: type, width: @width)
  end

  def deck=(flex)
    @attributes[:deck] = Deck.new(flex: flex, width: @width, length: @length)
  end

  def longboard(amount=1)
    return unless attributes_are_valid?

    return Longboard.new(@attributes) if amount == 1
    Array.new(amount) { Longboard.new(@attributes) }
  end

  private

  def attributes_are_valid?
    # Some kind of validation...
  end
end
