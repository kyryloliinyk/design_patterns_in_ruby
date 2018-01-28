# PDF fromatting strategy
class PdfStrategy
  # Knows how to initialize empty document
  def create_document
    SomePDFLibrary::Document.new(preferences: 'some pdf preferences')
  end

  # Knows how to render report sections with given data
  # For example, knows what objects are responsible for doing that
  def section_one(document, report_data)
    PDF::SeciontOne.new(document, report_data).call
  end

  def section_two(document, report_data)
    PDF::SeciontTwo.new(document, report_data).call
  end

  # Knows how to finalize given document
  def render(document)
    document.render
  end
end
