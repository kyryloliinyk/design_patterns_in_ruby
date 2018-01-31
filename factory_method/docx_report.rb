# Another one concrete class
class DocxReport < ReportBuilder
  private

  def formatter
    @formatter ||= DocxFormatter.new
  end
end
