class HomeViewController < UIViewController

  def loadView
    @layout = HomeScreenLayout.new
    self.view = @layout.view
    @layout.build
  end

end