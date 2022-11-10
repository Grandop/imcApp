//
//  ViewController.swift
//  imcApp
//
//  Created by Pedro Grando on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelHeight: UILabel!
    
    @IBOutlet weak var labelWeight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sliderHeight(_ sender: UISlider) {
        let sliderHeightValue = Int(sender.value)
        labelHeight.text = "\(String(sliderHeightValue))cm"
    }
    
    
    @IBAction func sliderWeight(_ sender: UISlider) {
        let sliderWeightValue = Int(sender.value)
        labelWeight.text = "\(String(sliderWeightValue))kg"
    }
    

    @IBAction func choosingSex(_ sender: UISegmentedControl) {
//        if (sender.titleForSegment(at: sender.selectedSegmentIndex) != nil) {
//            switch "feminino" {
//            case :
//                print("foi")
//            default:
//                print(".")
//            }
//        }
        
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        setupNextView()
    }
    
    
    func setupNextView() -> ResultViewController {
        let resultStoryboard: UIStoryboard = UIStoryboard(name: "resultScreen", bundle: nil)
        let resultViewController = resultStoryboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        resultViewController.modalPresentationStyle = .overFullScreen
        resultViewController.backgroundColor = .cyan
        
        self.present(resultViewController, animated: true)
        
        return resultViewController
    }
}

