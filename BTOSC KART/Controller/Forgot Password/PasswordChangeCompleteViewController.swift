//
//  PasswordChangeCompleteViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 12/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class PasswordChangeCompleteViewController: UIViewController {
       
        
    @IBOutlet weak var badgeNumber: UILabel!
    @IBOutlet weak var notificationButton:UIButton!
    @IBOutlet weak var varifyButton:UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}

extension PasswordChangeCompleteViewController{
        
    private func setup(){
        //changing the corner radius of views
        self.badgeNumber.layer.masksToBounds = true
        self.notificationButton.layer.cornerRadius = 20
        self.badgeNumber.layer.cornerRadius = 10
        self.varifyButton.layer.cornerRadius = 20
    }
}
