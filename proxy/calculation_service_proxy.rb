class CalculationServiceProxy
  def initialize
    @base_uri = "localhost:3000/bank_account"
  end

  def huge_calculation_one(arguments)
    rest_service.post('/huge_calculation_one', argumets)
  end

  def huge_calculation_two(arguments)
    rest_service.post('/huge_calculation_two', argumets)
  end

  private

  def rest_service
    @rest_client ||= RestClient.new(@base_uri, :json)
  end

  attr_reader :rest_service
end
