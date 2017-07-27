class PdfStyleGuideAdapter
  PX_POINTS_RATIO = 0.75

  def initialize(style_guide)
    @style_guide = style_guide
  end

  def h1
    {
      text_size: px_to_points(style_guide[:font_size_px]),
      text_style: style_guide[:font_weight],
    }
  end

  def page_margins
    {
      top_margin: px_to_points(style_guide[:top_px]),
      right_margin: px_to_points(style_guide[:right_px]),
      bottom_margin: px_to_points(style_guide[:bottom_px]),
      left_margin: px_to_points(style_guide[:left_px])
    }
  end

  private

  attr_reader :style_guide

  def px_to_points(px_amount)
    px_amount * PX_POINTS_RATIO
  end
end
