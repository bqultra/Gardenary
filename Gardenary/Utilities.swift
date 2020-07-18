//
//  Utilities.swift
//  Gardenary
//
//  Created by Szymek on 18/07/2020.
//  Copyright © 2020 Gardenary. All rights reserved.
//

import Foundation
import UIKit

//Hide keyboard when tapping anywhere besides
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
