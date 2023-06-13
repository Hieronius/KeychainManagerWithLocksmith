//
//  ViewController.swift
//  KeychainManagerWithLocksmith
//
//  Created by Арсентий Халимовский on 13.06.2023.
//

import UIKit
import Locksmith

class ViewController: UIViewController {
    
    // MARK: - IBActions
    
    @IBOutlet weak private var loginTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBActions

    @IBAction private func saveButtonAction(_ sender: UIButton) {
        // save data from keychain
    }
    
    // MARK: - Private Methods
    
    private func saveData() {
        if let login = loginTextField.text, let password = passwordTextField.text {
            do {
                // array of data objects with Distionary data type
                try Locksmith.saveData(data: ["Login": login, "Password": password], forUserAccount: "MyAccount")
            } catch {
                // catch an error if save process wasn't successful
                print("unable to save data")
            }
        }
    }
    
    private func loadData() {
        let dictionary = Locksmith.loadDataForUserAccount(userAccount: "MyAccount")
    }
}

