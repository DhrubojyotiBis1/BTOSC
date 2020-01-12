//
//  ConfirmNewPasswordViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 11/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ConfirmNewPasswordViewController: UIViewController {

    @IBOutlet weak var badgeNumber: UILabel!
    @IBOutlet weak var notificationButton:UIButton!
    @IBOutlet weak var confirmPasswordButton:UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword:UITextField!
    @IBOutlet weak var passwordLine:UIView!
    @IBOutlet weak var confirmPasswordLine:UIView!
    @IBOutlet weak var contentView:UIView!
            
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func showSecureText(_ sender:UIButton){
        if sender.tag == 1{
            self.password.isSecureTextEntry = !password.isSecureTextEntry
        }else{
            self.confirmPassword.isSecureTextEntry = !confirmPassword.isSecureTextEntry
        }
    }
    
    @IBAction func confirmPasswordButtonPressed(_ sender:UIButton){
        performSegue(withIdentifier: segueIdentifier.PasswordChangeCompleteVC, sender: nil)
    }
    
}
extension ConfirmNewPasswordViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField.tag == 1){
            self.passwordLine.backgroundColor = custumColour.appTheamPinkColour
        }else{
            self.confirmPasswordLine.backgroundColor = custumColour.appTheamPinkColour
        }
    }
        
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.passwordLine.backgroundColor = UIColor.lightGray
        self.confirmPasswordLine.backgroundColor = UIColor.lightGray
    }
}

extension ConfirmNewPasswordViewController{
            
    private func setup(){
        //setting the delegate
        self.password.delegate = self
        self.confirmPassword.delegate = self
        
        //changing the corner radius of views
        self.badgeNumber.layer.masksToBounds = true
        self.notificationButton.layer.cornerRadius = 20
        self.badgeNumber.layer.cornerRadius = 10
        self.confirmPasswordButton.layer.cornerRadius = 20
        //setting gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onTap))
        self.contentView.addGestureRecognizer(tapGesture)
    }
            
    @objc private func onTap(){
        self.password.endEditing(true)
        self.confirmPassword.endEditing(true)
    }
}
