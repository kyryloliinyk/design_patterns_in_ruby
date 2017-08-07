# PDF - Accounting
class AccountingPdfReport
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
    @report_data ||= AccountingData.new(@request_data)
  end
end


# DOCX - Accounting
class AccountingDocxReport
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
    @report_data ||= AccountingData.new(@request_data)
  end
end
