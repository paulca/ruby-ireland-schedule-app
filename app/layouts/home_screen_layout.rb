class HomeScreenLayout < MotionKit::Layout
  def layout
    add UIImageView, :logo
  end

  def logo_style
    top 0
    left 0
    width '100%'
    height '100%'
    image UIImage.imageNamed('belfast-ruby')
  end
end