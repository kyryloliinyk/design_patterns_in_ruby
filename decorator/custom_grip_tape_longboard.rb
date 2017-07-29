class CustomGripTapeLongboard
  def initialize(longboard, grip_tape_id)
    @longboard = longboard
    @grip_tape_id = grip_tape_id
  end

  def price
    @longboard.price + custom_grip_tape.price
  end

  def equipment
    @longboard.merge(custom_grip_tape: custom_grip_tape.name)
  end

  private

  def custom_grip_tape
    @custom_grip_tape ||= GripTape.find(@grip_tape_id)
  end
end
