//
//  SignUpViewController.swift
//  Gardenary
//
//  Created by Szymek on 09/07/2020.
//  Copyright © 2020 Gardenary. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //Back to Sign In button
    @IBAction func signin_btn(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide keyboard tapping anywhere
        hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
        hideInvalidErrors()
    }
    
    //White Status Bar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
 
    //Text fields
    @IBAction func firstNameTextField(_ sender: Any) {
    }
    
    @IBAction func emailTextField(_ sender: Any) {
    }
    
    @IBAction func passwordTextField(_ sender: Any) {
    }
    
    //Form buttons
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    @IBAction func termsOfUse(_ sender: Any) {
    }
    
    @IBAction func privacyPolicy(_ sender: Any) {
    }
    
    //Form validation errors
    
    @IBOutlet weak var firstNameValid: UILabel!
    
    @IBOutlet weak var emailValid: UILabel!
    
    @IBOutlet weak var passwordValid: UILabel!
    
    func hideInvalidErrors() {
        firstNameValid.alpha = 0
        emailValid.alpha = 0
        passwordValid.alpha = 0
    }
    
    //Validation function
    
//    func validateFields() -> String? {
//        
//    }
    
    //Sign Up button tapped
    @IBAction func signUpTapped(_ sender: Any) {
        
        //Validate the fields
        
        //Create the user
        
        //Transition to Home
        
        
    }
    
    
}
