class HomeScreenLayout < MotionKit::Layout
  def layout
    root :home_screen_view do
      add UIImageView, :logo
    end
  end

  def home_screen_view_style
    background_color UIColor.whiteColor
  end

  def logo_style
    # top 0
    # left 0
    image UIImage.imageNamed('belfast-ruby')

    constraints do
      width.equals(289)
      height.equals(234)

      center.equals(:superview)
      # top_left.is ['50% - 114', '50% - 117']
    end
  end
end