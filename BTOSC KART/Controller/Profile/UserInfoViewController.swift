//
//  UserInfoViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 15/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var aboutView:UIView!
    @IBOutlet weak var generalInfoView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}

extension UserInfoViewController{
    private func setup(){
        self.aboutView.layer.cornerRadius = 5
        self.generalInfoView.layer.cornerRadius = 8
    }
}
