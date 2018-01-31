# Concrete class
class PdfReport < ReportBuilder
  private

  # Decides what concrete formatter should be used
  def formatter
    @formatter ||= PdfFormatter.new
  end
end
