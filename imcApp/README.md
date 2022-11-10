#  Writing exercises
=============================================================================================

1) Define o fluxo da interface do seu aplicativo, também define a transição entre duas viewController no arquivo de storyboard.

=============================================================================================

2) let storyboard: UIStoryboard = UIStoryboard(name: "resultScreen", bundle: nil)

   let resultViewController = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
   self.present(resultViewController, animated: true)
   
==========================================================================================   

3) Neste caso iremos mudar os dados das imagens sendo diferentes imagens e resoluções das imagens entre as view.

   Na view principal colocamos: 
   
   let imageFile = UIImage(named: imageName)
   let resultStoryboard: UIStoryboard = UIStoryboard(name: "resultScreen", bundle: nil)
   let resultViewController = resultStoryboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController

   resultViewController.modalPresentationStyle = .overFullScreen
   
   resultViewController.contentStyle = .scaleAspectFit
   resultViewController.image = imageFile
   
   self.present(resultViewController, animated: true)

   return resultViewController 
   
   
   Na view que aparecerá depois:

   @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage?
    var contentStyle: UIView.ContentMode?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did load")

        imageView.image = image
        imageView.contentMode = contentStyle ?? .scaleAspectFit
        
    }
        
=============================================================================================

4) resultViewController.modalPresentationStyle = .overFullScreen
