//
//  SignUpViewController.swift
//  BAZARO
//
//  Created by Dhrubojyoti on 08/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInView: UIView!
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            self.setup()
            
        }
    
    @IBAction func signUpButtonPressed(_ sender:UIButton){
        
        if(email.text != "" || firstname.text == "" || lastname.text == "" || password.text == "" || confirmPassword.text == ""){
            
            if(firstname.text == ""){
                //first name is empty
            }else if(lastname.text == ""){
                //last name is empty
            }else if(email.text == ""){
                //email is empty
            }else if(password.text == ""){
                //password is empty
            }else{
                //confirm password is empty
            }
        }else{
            //nothing is empty
            if(password.text == confirmPassword.text){
                //every thing is good to go
                //do the networking to signUp
                //send the user to the next VC
            }else{
                //password and confirm password is not same
            }
            
        }
        
    }
    
}

    extension SignUpViewController{
        private func setup(){
            self.signInView.layer.cornerRadius = 24
            setUp().makeCardView(forView: self.signInView, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 15)
            self.signInButton.layer.cornerRadius = 25
        }
    }
