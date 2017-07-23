class ReportController
  def show
    respond_to do |format|
      format.pdf { send_data report(PdfStrategy) }
      format.docx { send_data report(DocxStrategy) }
    end
  end

  private

  def report(strategy)
    ReportBuilder.new(
      strategy: strategy.new,
      report_data: ReportData.new(params)
    ).call
  end
end
