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

        // Do any additional setup after loading the view.
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
