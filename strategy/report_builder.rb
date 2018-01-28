# ReportBuilder is responsible for generating reports
# with given data and format strategy
class ReportBuilder
  # Expects strategy object to be able to initialize document
  def initialize(strategy:, report_data:)
    @strategy = strategy
    @report_data = report_data
    @document = strategy.create_document
  end

  # ReportBuilder knows what parts report must include
  # and expects format strategy object to know
  # how to create each one with given data.
  def call
    strategy.section_one(document, report_data)
    strategy.section_two(document, report_data)
    strategy.render(document)
  end

  private

  attr_reader :strategy, :report_data, :document
end
