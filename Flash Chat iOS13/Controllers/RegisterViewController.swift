//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        // Check that the email and the password are not nil
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            print("Email: \(email)")
            print("Password: \(password)")
            
            // Asume that we have created the user
            performSegue(withIdentifier: Constants.registerSegue, sender: self)
        }
    }
}
