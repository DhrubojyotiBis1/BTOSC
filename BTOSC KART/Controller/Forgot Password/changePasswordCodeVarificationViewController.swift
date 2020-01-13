//
//  changePasswordCodeVarificationViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 11/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class changePasswordCodeVarificationViewController: UIViewController {

    @IBOutlet weak var badgeNumber: UILabel!
    @IBOutlet weak var notificationButton:UIButton!
    @IBOutlet weak var varifyButton:UIButton!
    @IBOutlet weak var code: UITextField!
    @IBOutlet weak var phoneNumberLine:UIView!
    @IBOutlet weak var contentView:UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func varfyButtonPressed(_ sender:UIButton){
        performSegue(withIdentifier: segueIdentifier.confirmNewPasswordVC, sender: nil)
    }

}

extension changePasswordCodeVarificationViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.phoneNumberLine.backgroundColor = custumColour.appTheamPinkColour
    }
        
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.phoneNumberLine.backgroundColor = UIColor.lightGray
    }
}

extension changePasswordCodeVarificationViewController{
        
    private func setup(){
        //setting the delegate
        self.code.delegate = self
        
        //changing the corner radius of views
        self.badgeNumber.layer.masksToBounds = true
        self.notificationButton.layer.cornerRadius = 20
        self.badgeNumber.layer.cornerRadius = 10
        self.varifyButton.layer.cornerRadius = 20
        //setting gesture
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onTap))
            self.contentView.addGestureRecognizer(tapGesture)
        }
        
        @objc private func onTap(){
            self.code.endEditing(true)
        }
}
