class HomeViewController < UIViewController

  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    image = UIImage.imageNamed('belfast-ruby.png')
    view.image = image
  end
end