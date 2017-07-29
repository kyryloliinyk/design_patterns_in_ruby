base_longboard = BaseLongboard.new(
  deck: some_deck_object,
  truck: some_truck_object,
  wheels: some_wheels_object
)

longboard_with_print = CustomPrintLongboard.new(base_longboard, "print_id")
ordered = CustomGripTapeLongboard(longboard_with_print, "grip_tape_id")
