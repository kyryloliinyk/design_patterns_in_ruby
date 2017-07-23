class DocxStrategy
  def create_document
    SomeDocxLibrary::CreateDocument.new(preferences: 'some docx preferences')
  end

  def section_one(document, report_data)
    # Some logic to build section one, for example:
    DOCX::SeciontOne.new(
      document: document,
      data: report_data,
      footer: footer,
      header: header
    ).call
  end

  def section_two(document, report_data)
    # Some logic to build section one, for example
    DOCX::SeciontTwo.new(
      document: document,
      data: report_data,
      footer: footer,
      header: header
    ).call
  end

  def render(document)
    DOCX::FinishDocument.new(document).call
  end

  private

  def footer
    # some footer object,
  end

  def header
    # some header object,
  end
end
