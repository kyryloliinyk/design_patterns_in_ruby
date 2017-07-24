class ResponseWrapper
  include Enumerable

  attr_reader :total

  def initialize(response)
    @collection = response[:data]
    @total = response[:total]
  end

  def each(&block)
    @collection.each(&block)
  end
end
