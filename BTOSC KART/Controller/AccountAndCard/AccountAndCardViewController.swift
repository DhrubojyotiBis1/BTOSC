//
//  AccountAndCardViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 14/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class AccountAndCardViewController: UIViewController {
    
    @IBOutlet weak var badgeNumber:UILabel!
    @IBOutlet weak var notificationButton:UIButton!
    @IBOutlet weak var tabChangeView:UIView!
    @IBOutlet weak var cardTabButton:UIButton!
    @IBOutlet weak var accountTabButton:UIButton!
    @IBOutlet weak var showCardView:UIView!
    @IBOutlet weak var showAccountView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func notificationButtonPressed(_ sender:UIButton){
        
    }
    
    @IBAction func tabChangeButtonPressed(_ sender:UIButton){
        if sender.tag == 1{
            self.showAccountView.alpha = 1
            self.showCardView.alpha = 0
            self.accountTabButton.setTitleColor(custumColour.appTheamPinkColour, for: .normal)
            self.cardTabButton.setTitleColor(.black, for: .normal)
        }else{
            self.showAccountView.alpha = 0
            self.showCardView.alpha = 1
            self.accountTabButton.setTitleColor(.black, for: .normal)
            self.cardTabButton.setTitleColor(custumColour.appTheamPinkColour, for: .normal)
        }
    }
    
}

extension AccountAndCardViewController{
    
    private func setup(){
        
        //changing the corner radius of views
        self.badgeNumber.layer.masksToBounds = true
        self.notificationButton.layer.cornerRadius = 20
        self.badgeNumber.layer.cornerRadius = 10
        self.tabChangeView.layer.cornerRadius = 10
        
        setUp().makeCardView(forView: self.tabChangeView, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 5)
    }
    
}
