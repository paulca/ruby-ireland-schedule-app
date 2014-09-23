class HomeScreenLayout < MotionKit::Layout
  view :lets_go_button

  def layout
    root :home_screen_view do
      add UIImageView, :logo

      add UILabel, :not
      @lets_go_button = add UIButton, :lets_go_button
    end
  end

  def home_screen_view_style
    background_color UIColor.whiteColor
  end

  def lets_go_button_style
    title 'Let’s Go!'
    title_color NSColor.blackColor
    constraints do
      width.equals(:superview)
      top.equals(:logo, :bottom)
      bottom.equals(:superview)
    end
  end

  def not_style
    text 'NOT!'
    color NSColor.whiteColor
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