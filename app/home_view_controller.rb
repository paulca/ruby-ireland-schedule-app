class HomeViewController < UIViewController

  def loadView
    @layout = HomeScreenLayout.new
    self.view = @layout.view
    @layout.build
  end

  def viewDidLoad
    @button = @layout.get(:lets_go_button)
    @button.when_tapped { open_meetups_list }
  end

  def open_meetups_list
    App.alert("What meetups?")
  end

end