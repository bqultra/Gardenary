//
//  HomeViewController.swift
//  Gardenary
//
//  Created by Szymek on 09/07/2020.
//  Copyright © 2020 Gardenary. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide keyboard tapping anywhere
        hideKeyboardWhenTappedAround()

        //Light status bar
        var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    }
}
