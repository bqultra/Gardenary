//
//  SignUpViewController.swift
//  Gardenary
//
//  Created by Szymek on 09/07/2020.
//  Copyright © 2020 Gardenary. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide keyboard tapping anywhere - Source: Utilities
        hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
        hideError()
        
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
    
    //Hide text field error
    func hideError() {
        errorField.alpha = 0
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
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    //Form buttons
    @IBAction func signUpButton(_ sender: Any) {
    }
    @IBAction func termsOfUse(_ sender: Any) {
    }
    @IBAction func privacyPolicy(_ sender: Any) {
    }
    
    //Form validation errors
    @IBOutlet weak var errorField: UILabel!
    
    
    //Validation function
    func validateFields() -> String? {
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if isPasswordValid(cleanedPassword) == false {
            
            return "Your password must have at least 8 characters, one number and special sign."
            
        }
        
        return nil
    }
    
    //Sign Up button tapped
    @IBAction func signUpTapped(_ sender: Any) {
        
        //Validate the fields
        let error = validateFields()
        
        if error != nil {
            
            showError(error!)
            
        } else {
            
            //Clean data from text fields
            
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //Create the user
            
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                //Check for errors
                
                if err != nil {
                    
                    self.showError("Error creating the user")
                    
                } else {
                    
                    let db = Firestore.firestore().document(email)
                    
                    db.collection("users").addDocument(data: ["firstname": firstName, "UID": result!.user.uid ]) { (error) in
                        
                        if error != nil {
                            
                            self.showError("Error saving user data")
                            
                        }
                        
                    }
                    
                }
                
            }
            
            //Transition to Home
            self.transitionToHome()
        }
        
    }
    
    func showError(_ message: String) {
        
        errorField.text = message
        errorField.alpha = 1
        
    }
    
    func transitionToHome() {
        
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
    
}
