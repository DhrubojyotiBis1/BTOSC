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
        
        if(email.text == "" || firstname.text == "" || lastname.text == "" || password.text == "" || confirmPassword.text == "" || phoneNumber.text == ""){
            
            if(firstname.text == ""){
                //first name is empty
                print("First name empty")
            }else if(lastname.text == ""){
                //last name is empty
                print("last name empty")
            }else if(email.text == ""){
                //email is empty
                print("email name empty")
            }else if(password.text == ""){
                //password is empty
                print("password name empty")
            }else if(confirmPassword.text == ""){
                //confirm password is empty
                print("confirm password name empty")
            }else{
                //phone number is empty
                print("phone number empty")
            }
        }else{
            //nothing is empty
            if(password.text == confirmPassword.text){
                //every thing is good to go
                let phoneNumber = smsGateWayConstants.countryCode + self.phoneNumber.text!
                //do the networking to signUp
                networking().getOtp(withPhoneNumber: phoneNumber)
                //send the user to the next VC
                performSegue(withIdentifier: segueIdentifier.OtpVaificationVC, sender: nil)
            }else{
                //password and confirm password is not same
                print("password and confirm password not same")
            }
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier.OtpVaificationVC {
            let destination = segue.destination as! OtpVarificationViewController
            let phoneNumber = smsGateWayConstants.countryCode + self.phoneNumber.text!
            destination.phoneNumber = phoneNumber
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
