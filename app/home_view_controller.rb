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
    AFMotion::JSON.get('http://ruby-ireland-schedule-api.herokuapp.com/meetups.json') do |result|
      if result.success?
        App.alert("Meetups: #{result.object}")
      else
        App.alert("Whoops!")
      end
    end
  end

end