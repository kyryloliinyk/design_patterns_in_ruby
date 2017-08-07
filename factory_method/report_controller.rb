class ReportController
  def show
    respond_to do |format|
      format.pdf { send_data PdfReport.new(params).call }
      format.docx { send_data DocxReport.new(params).call }
    end
  end
end
