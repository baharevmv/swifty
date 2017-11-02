//
//  LoginFormController.swift
//  VKapp
//
//  Created by max on 31.10.17.
//  Copyright © 2017 Maksim Bakharev. All rights reserved.
//

import UIKit

class LoginFormController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
  
//  Here STARTS ======= Routines with scroll view ===========
//  When the Keyboard Appears
    @objc func keyboardWasShown(notification: Notification) {
        // get the Keyboard sizes
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIKeyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0)
        
        // adding offset under UIScrollView equals the keybord size
        
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
// When the Keyboard Disappers
    @objc func keyboardWillBeHidden(notification: Notification){
        // setting offest under UIScrollView equals 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // subscribing on two notifications - one appears when the keyboard appears
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        // the second notification - when the keyboard dissapears
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    // Usnubscribbing out from unusable Notifications
    override func viewWillDisappear(_ animated: Bool){
            super.viewWillDisappear(animated)
            NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
            NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
        
//  Here ENDS ========== Routines with scroll view ===========
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // tapping gesture
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
    // adding Gesture to UIScrollView
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let login = loginInput.text!
        let password = passwordInput.text!
        if login == "admin" && password == "123" {
            return true
        } else {
            // making controller
            let alter = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
            // making button for UIController
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            // Adding button to the UIAlertController
            alter.addAction(action)
            // Showing UIAlertController
            present(alter, animated:true, completion: nil)
            return false
        }
    }
}

