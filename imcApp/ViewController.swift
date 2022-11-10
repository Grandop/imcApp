//
//  ViewController.swift
//  imcApp
//
//  Created by Pedro Grando on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelHeight: UILabel!
    
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var labelWeight: UILabel!
    
    @IBOutlet weak var sliderWeight: UISlider!
    
    var sex: Sexo?
    var height: Float?
    var weight: Float?
    var background: UIColor?
    var imc: Float = 0.0
    var message: String = ""
    
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
        if sender.selectedSegmentIndex == 0 {
            sex = .masculino
        } else {
            sex = .feminino
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        calcBySex()
        setupNextView()
    }
    
    func calcImc() -> Float {
        let height = self.sliderHeight.value / 100
        let weight = self.sliderWeight.value
        let imc: Float = weight / pow(height, 2)
        return imc
    }
    
    func setupNextView() {
        let resultStoryboard: UIStoryboard = UIStoryboard(name: "resultScreen", bundle: nil)
        let resultViewController = resultStoryboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        resultViewController.modalPresentationStyle = .overFullScreen
        resultViewController.backgroundColor = background
        resultViewController.imcValue = String(imc)
        resultViewController.messageWarning = message
        
        
        self.present(resultViewController, animated: true)
    }
    
    func calcBySex()  {
        height = Float(labelHeight.text ?? "0")
        weight = Float(labelWeight.text ?? "0")
        imc = calcImc()
        
        if sex == .masculino {
            switch imc {
            case 0.0..<20.7:
                message = "Você está abaixo do peso"
                background = .cyan
            case 20.7...26.4:
                message = "Você está no peso ideal"
                background = .green
            case 26.5...27.8:
                message = "Você está pouco acima do peso"
                background = .yellow
            case 27.9...31.1:
                message = "Você está acima do peso"
                background = .red
            case 31.2...:
                message = "Você está obeso"
                background = .red
            default:
                print("...")
            }
        } else {
            switch imc {
            case 0.0..<19.1:
                message = "Você está abaixo do peso"
                background = .cyan
            case 19.1...25.8:
                message = "Você está no peso ideal"
                background = .green
            case 25.9...27.3:
                message = "Você está pouco acima do peso"
                background = .yellow
            case 27.4...32.3:
                message = "Você está acima do peso"
                background = .red
            case 32.4...:
                message = "Você está obeso"
                background = .red
            default:
                print("..")
            }
        }
    }
}

