# Base class
class ReportBuilder
  def initialize(report_data)
    @report_data = report_data
    # assumes that inheritors will decide
    # what exact class for formatter object should be used
    @document = formatter.create_document
  end

  # No matter what class for formatter object will be chosen
  # it must provide expected behavior
  # and respond to 'create_document', 'section_...' and 'render' messages
  def call
    formatter.section_one(document, report_data)
    formatter.section_two(document, report_data)
    formatter.render(document)
  end

  private

  attr_reader :report_data, :document, :formatter

  # 'formatter' is a factory method
  # it must determine which class should be used for 'formatter' object
  def formatter
    raise NotImplementedError
  end
end
