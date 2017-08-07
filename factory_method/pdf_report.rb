class PdfReport < ReportBuilder
  def initialize(report_data)
    super(report_data)
  end

  private

  def strategy
    @strategy ||= PdfStrategy.new
  end
end
