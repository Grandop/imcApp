//
//  ResultViewController.swift
//  imcApp
//
//  Created by Pedro Grando on 09/11/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        view.backgroundColor = backgroundColor
    }


    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
