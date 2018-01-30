# Decorator
# Adds additional behavior
class CustomPrintLongboard
  # Takes base object as argument
  # and other required stuff (custom_print object)
  def initialize(longboard, custom_print)
    @longboard = longboard
    @custom_print = custom_print
  end

  # Redefines base object's 'price' method
  def price
    @longboard.price + @custom_print.price
  end

  # Redefines base object's 'equipment' method
  def equipment
    @longboard.merge(custom_print: @custom_print.name)
  end

  # Adds aditional behavior to base object
  def decorated_object_behavior
    #code
  end

  # Supports all base object's behavior
  def base_object_behavior
    @longboard.base_object_behavior
  end
end
