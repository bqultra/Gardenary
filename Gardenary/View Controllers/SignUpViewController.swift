//
//  SignUpViewController.swift
//  Gardenary
//
//  Created by Szymek on 09/07/2020.
//  Copyright © 2020 Gardenary. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide keyboard tapping anywhere - Source: Utilities
        hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
        hideInvalidErrors()
        
        //Show/hide password - styling button inside UITextField
        passwordFieldIcon.rightViewMode = .whileEditing
        eyeButton.setImage(UIImage(named: "eye"), for: .normal)
        let myColor = UIColor(red: 186/255, green: 186/255, blue: 186/255, alpha: 1.0) /* #bababa */
        eyeButton.tintColor = myColor
        
        //Padding
        eyeButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        eyeButton.frame = CGRect(x: CGFloat(passwordFieldIcon.frame.size.width - 25), y: CGFloat(5), width: CGFloat(15), height: CGFloat(25))
        
        //Button tap action
        eyeButton.addTarget(self, action: #selector(self.btnPasswordVisibility), for: .touchUpInside)
        passwordFieldIcon.rightView = eyeButton
        passwordFieldIcon.rightViewMode = .always
    }
    
    
    //Back to Sign In button
    @IBAction func signin_btn(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    //White Status Bar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //Hide text fields errors
    func hideInvalidErrors() {
        firstNameValid.alpha = 0
        emailValid.alpha = 0
        passwordValid.alpha = 0
    }
    
    //SHOW/HIDE PASSWORD *** Show or Hide password (Eye Icon)
    
    @IBOutlet weak var passwordFieldIcon: UITextField!
    let eyeButton = UIButton(type: .custom)

    //SHOW/HIDE PASSWORD *** Button tapped
    @IBAction func btnPasswordVisibility(_ sender: Any) {
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (sender as! UIButton).isSelected {
            self.passwordFieldIcon.isSecureTextEntry = false
            eyeButton.setImage(UIImage(named: "eye_closed"), for: .normal)
        } else {
            self.passwordFieldIcon.isSecureTextEntry = true
            eyeButton.setImage(UIImage(named: "eye"), for: .normal)
        }
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
