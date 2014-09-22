class AppDelegate < PM::Delegate
  def on_load(app, options)
    open HomeScreen.new
  end
end