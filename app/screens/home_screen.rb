class HomeScreen < PM::Screen

  def load_view
    @layout = HomeScreenLayout.new
    self.view = @layout.view
    @layout.build
  end

  def on_load
    @button = @layout.get(:lets_go_button)
    @button.when_tapped { open_meetups_list }
  end

  def open_meetups_list
    open MeetupListScreen.new(nav_bar: true)
  end

end