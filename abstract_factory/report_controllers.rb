# Sales report controller
class SalesReportController
  def show
    respond_to do |format|
      format.pdf { send_data SalesPdfReport.new(params).call }
      format.docx { send_data SalesDocxReport.new(params).call }
    end
  end
end


# Accounting report controller
class AccountingReportController
  def show
    respond_to do |format|
      format.pdf { send_data AccountingPdfReport.new(params).call }
      format.docx { send_data AccountingDocxReport.new(params).call }
    end
  end
end
