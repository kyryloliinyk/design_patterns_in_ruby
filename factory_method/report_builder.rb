class ReportBuilder
  def initialize(report_data)
    @report_data = ReportData.new(report_data)
    @document = strategy.create_document
  end

  def call
    section_one(document, report_data)
    section_two(document, report_data)
    render(document)
  end

  private

  attr_reader :report_data, :document

  delegate :section_one, :section_two, :render, to: :strategy

  def strategy
    raise NotImplementedError
  end
end
