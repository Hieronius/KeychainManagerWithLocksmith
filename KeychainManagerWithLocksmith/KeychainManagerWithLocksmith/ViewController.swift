//
//  ViewController.swift
//  KeychainManagerWithLocksmith
//
//  Created by Арсентий Халимовский on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBActions
    
    @IBOutlet weak private var loginTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions

    @IBAction private func saveButtonAction(_ sender: UIButton) {
    }
}

