class DocxReport < ReportBuilder
  def initialize(report_data)
    super(report_data)
  end

  private

  def strategy
    @strategy ||= DocxStrategy.new
  end
end
