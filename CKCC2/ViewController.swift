//
//  ViewController.swift
//  CKCC2
//
//  Created by KimhounKP on 3/13/17.
//  Copyright © 2017 KimhounKP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    let username = "kimhoun"
    let password = "123"

    @IBAction func looginButtonClick() {
        let inputPassword = passwordTextField.text!
        let InputUsername = usernameTextField.text!
        if login(withUsername: InputUsername,andPassword: inputPassword){
            performSegue(withIdentifier: "segue_main", sender: nil)
        }
        else{
            print("Invalid Username Or Password")
        }
    }
    
    func login(withUsername username: String, andPassword password: String) -> Bool {
        
        if  username == self.username && password == self.password {
            return true
        } else {
            return false
        }
    }

}

