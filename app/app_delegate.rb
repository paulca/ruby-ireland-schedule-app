class AppDelegate < PM::Delegate
  include CDQ

  def on_load(app, options)
    cdq.setup
    open HomeScreen.new
  end
end