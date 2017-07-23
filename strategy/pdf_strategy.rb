class PdfStrategy
  def create_document
    SomePDFLibrary::Document.new(preferences: 'some pdf preferences')
  end

  def section_one(document, report_data)
    # Some logic to build section one, for example
    PDF::SeciontOne.new(
      document,
      attendants.mege(report_data)
    ).call
  end

  def section_two(document, report_data)
    # Some logic to build section one, for example
    PDF::SeciontTwo.new(
      document,
      attendants.mege(report_data),
      # something else ...
    ).call
  end

  def render(document)
    document.render
  end

  private

  def attendants
    {
      footer: # some footer object,
      header: # some header object
    }
  end
end
