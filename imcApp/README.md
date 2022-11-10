#  Writing exercises
=============================================================================================

1) Define o fluxo da interface do seu aplicativo, também define a transição entre duas viewController no arquivo de storyboard.

=============================================================================================

2) let storyboard: UIStoryboard = UIStoryboard(name: "resultScreen", bundle: nil)

   let resultViewController = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
   self.present(resultViewController, animated: true)
   
==========================================================================================   

3) Neste caso iremos mudar os dados da nossa cor do background entre as view.

   Na view principal colocamos: 
   
   
   
   Na view que aparecerá depois:

=============================================================================================

4) resultViewController.modalPresentationStyle = .overFullScreen
