# PDF - Sales
class SalesPdfReport
  def initialize(request_data)
    @request_data = request_data
  end

  def call
    ReportBuilder.new(self).call
  end

  private

  def strategy
    @strategy ||= PdfStrategy.new
  end

  def report_data
    @report_data ||= SalesData.new(@request_data)
  end
end


# DOCX - Sales
class SalesDocxReport
  def initialize(request_data)
    @request_data = request_data
  end

  def call
    ReportBuilder.new(self).call
  end

  private

  def strategy
    @strategy ||= DocxStrategy.new
  end

  def report_data
    @report_data ||= SalesData.new(@request_data)
  end
end
