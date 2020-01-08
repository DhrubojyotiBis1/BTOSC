//
//  ViewController.swift
//  BAZARO
//
//  Created by Dhrubojyoti on 06/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInView: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setup()
        
    }
    
    @IBAction func signInPassword(_ sender:UIButton){
        
        if(email.text == "" || password.text == ""){
            
            if(email.text == ""){
                //email is empty
            }else{
                //password is empty
            }
        }else{
            //do networking to signIn
            //send the user to the next VC
        }
        
    }


}

extension ViewController{
    private func setup(){
        self.signInView.layer.cornerRadius = 24
        setUp().makeCardView(forView: self.signInView, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 15)
        self.signInButton.layer.cornerRadius = 25
    }
}

