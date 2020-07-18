//
//  SignInViewController.swift
//  Gardenary
//
//  Created by Szymek on 09/07/2020.
//  Copyright © 2020 Gardenary. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    //Buttons outlet
    @IBOutlet weak var fb_btn: UIButton!
    @IBOutlet weak var google_btn: UIButton!
    @IBOutlet weak var apple_btn: UIButton!
    @IBOutlet weak var sign_up: UIButton!
    
    //Text fields
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //Form buttons
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide keyboard tapping anywhere
        hideKeyboardWhenTappedAround()
            
            //Social buttons style
            fb_btn.layer.cornerRadius = 5
            google_btn.layer.cornerRadius = 5
            google_btn.layer.borderWidth = 1
            google_btn.layer.borderColor = UIColor.black.cgColor
            apple_btn.layer.cornerRadius = 5
            
            //Buttons inner elements margin
            fb_btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 15)
            google_btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
            apple_btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        
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
    
        
        //Light status bar
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    
    @IBAction func signInTapped(_ sender: Any) {
    }
}
