//
//  ResultViewController.swift
//  imcApp
//
//  Created by Pedro Grando on 09/11/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imcValueLabel: UILabel!
    @IBOutlet weak var messageWarningLabel: UILabel!
    
    var imcValue: String?
    var messageWarning: String?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imcValueLabel.text = imcValue
        messageWarningLabel.text = messageWarning
        view.backgroundColor = backgroundColor
    }
    


    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
