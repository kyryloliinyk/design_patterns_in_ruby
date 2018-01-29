# Agregate object that includes both collection and other stuff
class ResponseWrapper
  # By simply mixing the Enumerable module into ResponseWrapper and defining an each method, we have equipped ResponseWrapper with all kinds of Enumerable goodness, such as all?, any?, find, count, map, select...
  include Enumerable

  attr_reader :total, :current_page

  # Takes response object on initialize
  # and gets required data (collection & total)
  def initialize(response)
    @collection = response[:data]
    @total = response[:total]
    @current_page = response[:current_page]
  end

  # Defines method for iterating internal collection
  # Also fulfills tre requirements of Enumerable (define each method)
  # to include all additional behavior
  def each(&block)
    @collection.each(&block)
  end
end
