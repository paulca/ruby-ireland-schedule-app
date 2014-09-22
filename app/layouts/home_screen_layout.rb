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
    top 0
    left 0
    width '289'
    height '234'
    image UIImage.imageNamed('belfast-ruby')
  end
end