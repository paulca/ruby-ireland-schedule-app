class HomeScreenLayout < MotionKit::Layout
  def layout
    root :home_screen_view do
      add UIImageView, :logo

      add UILabel, :not
    end
  end

  def home_screen_view_style
    background_color UIColor.whiteColor
  end

  def not_style
    text 'NOT!'
    color '#fff'.uicolor
    text_alignment NSTextAlignmentCenter
    constraints do
      width.equals(:logo)
      height 50
      top_left.equals(:logo)
    end
  end

  def logo_style
    image UIImage.imageNamed('belfast-ruby')

    constraints do
      width.equals(289)
      height.equals(234)

      center.equals(:superview)
    end
  end
end