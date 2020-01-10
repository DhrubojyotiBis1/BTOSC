//
//  OtpVarificationViewController.swift
//  The Pantry
//
//  Created by Dhrubojyoti on 18/12/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class OtpVarificationViewController: UIViewController {
    
    var phoneNumber = String()
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var phoneNumberLable : UILabel!
    @IBOutlet weak var firstNumberInOtpTextField:UITextField!
    @IBOutlet weak var secondNumberInOtpTextField:UITextField!
    @IBOutlet weak var thirdNumberInOtpTextField:UITextField!
    @IBOutlet weak var fourthNumberInOtpTextField:UITextField!
    @IBOutlet weak var continueButton:UIButton!
    @IBOutlet weak var otpTime:UILabel!
    @IBOutlet weak var resendOtpButton:UIButton!
    let otpResendingTime = 25
    var currentTime = Int()
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func continueButtonPressed(_ sender:UIButton){
        self.neworkingForOtpVarification()
    }
    
    @IBAction func backButtonPressed(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func didNotGetOtpButtonPressed(_ sender: UIButton) {
        self.otpTime.text = String(self.otpResendingTime)
        self.resendOtpButton.isEnabled = false
        self.setTimer()
        //self.networkingForResendingOtp()
    }
}



//MARK:- Networking stuff
extension OtpVarificationViewController{
    private func neworkingForOtpVarification() {
        let first = self.firstNumberInOtpTextField.text!
        let second = self.secondNumberInOtpTextField.text!
        let third = self.thirdNumberInOtpTextField.text!
        let fourth = self.fourthNumberInOtpTextField.text!
        
        let otp = first + second + third + fourth
        networking().otpVarification(withOtp: otp, andPhoneNumber: self.phoneNumber) { (result, massage) in
            if(result){
                print("otp varification done")
                //check it the user is existing user or not
                //if not then send to register page
                //else send to home VC
            }else{
                if(massage == "otp_not_verified"){
                    //error deu to wrong otp entered
                    //show th error massage to user
                    //self.view.makeToast("otp_not_verified", duration: 3, position: .bottom, completion: nil)
                }else if massage == "otp_expired"{
                    //error due to experied otp
                    //show th error massage to user
                    //self.view.makeToast("otp_not_verified", duration: 3, position: .bottom, completion: nil)
                }else{
                    //netwok error
                    print("Network not present")
                }
            }
        }
        
    }
    
    /*private func networkingForResendingOtp(){
        Networking().resendOtp(forPhoneNumber: phoneNumber) { (result,token) in
            if(result){
                //otp resended done
                print("otp resended done")
            }else{
                if(token == 2){
                    //wrong mobile number
                    //show the error to the user
                }else{
                    //network probem
                    print("network problem")
                }
            }
        }
    }*/
}

//All private function
extension OtpVarificationViewController{
    private func setup(){
       // self.phoneNumberLable.text = self.phoneNumber
        
        setUp().makeCardView(forButton: self.continueButton, withShadowHight: 4.5, shadowWidth: 0, shadowOpacity: 0.4, shadowRadius: 0, cornerRadius: 10)
        
        self.firstNumberInOtpTextField.becomeFirstResponder()
        
        self.firstNumberInOtpTextField.addTarget(self, action: #selector(textFiledDidChanged(textField:)), for: .editingChanged)
        self.secondNumberInOtpTextField.addTarget(self, action: #selector(textFiledDidChanged(textField:)), for: .editingChanged)
        self.thirdNumberInOtpTextField.addTarget(self, action: #selector(textFiledDidChanged(textField:)), for: .editingChanged)
        self.fourthNumberInOtpTextField.addTarget(self, action: #selector(textFiledDidChanged(textField:)), for: .editingChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap))
        self.contentView.addGestureRecognizer(tapGesture)
        
        //setting timer
        self.setTimer()
    }
    
    private func setTimer(){
        self.currentTime = self.otpResendingTime
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.calculateTime), userInfo: nil, repeats: true)
    }
    
    @objc private func onTap(){
        self.firstNumberInOtpTextField.endEditing(true)
        self.secondNumberInOtpTextField.endEditing(true)
        self.thirdNumberInOtpTextField.endEditing(true)
        self.fourthNumberInOtpTextField.endEditing(true)
    }
    
    @objc private func textFiledDidChanged(textField:UITextView){
        let text = textField.text
        
        if text?.utf16.count == 1{
            switch textField {
            case self.firstNumberInOtpTextField:
                self.secondNumberInOtpTextField.becomeFirstResponder()
                break
            case self.secondNumberInOtpTextField:
                self.thirdNumberInOtpTextField.becomeFirstResponder()
                break
            case self.thirdNumberInOtpTextField:
                self.fourthNumberInOtpTextField.becomeFirstResponder()
                break
            case self.fourthNumberInOtpTextField:
                self.fourthNumberInOtpTextField.resignFirstResponder()
                break
            default:
                break
            }
        }
    }
    
    @objc private func calculateTime(){
        if(currentTime == 0){
            self.timer.invalidate()
            self.resendOtpButton.isEnabled = true
            return
        }
        
        self.currentTime -= 1
        if(self.currentTime < 10){
            self.otpTime.text = "0\(self.currentTime)"
        }else{
            self.otpTime.text = String(self.currentTime)
        }
    }
}
