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

        // Do any additional setup after loading the view.
            
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
            
        }
        
        //Light status bar
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    
    @IBAction func signInTapped(_ sender: Any) {
    }
}
