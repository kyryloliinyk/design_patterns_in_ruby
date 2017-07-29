class CustomPrintLongboard
  def initialize(longboard, print_id)
    @longboard = longboard
    @print_id = print_id
  end

  def price
    @longboard.price + custom_print.price
  end

  def equipment
    @longboard.merge(custom_print: custom_print.name)
  end

  private

  def custom_print
    @custom_print ||= CustomPrint.find(@print_id)
  end
end
