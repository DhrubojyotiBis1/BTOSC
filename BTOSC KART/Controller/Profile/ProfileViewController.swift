//
//  ProfileViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 15/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView:UIImageView!
    @IBOutlet weak var addButton:UIButton!
    @IBOutlet weak var profileView:UIView!
    @IBOutlet weak var userInfoButton:UIButton!
    @IBOutlet weak var yourReview:UIButton!
    @IBOutlet weak var userInfoContentView:UIView!
    @IBOutlet weak var yourReviewContentView:UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func tabChangeButtonPressed(_ sender:UIButton){
        if sender.tag == 1{
            self.userInfoContentView.alpha = 1
            self.yourReviewContentView.alpha = 0
            self.userInfoButton.setTitleColor(custumColour.appTheamPinkColour, for: .normal)
            self.yourReview.setTitleColor(.black, for: .normal)
        }else{
            self.userInfoContentView.alpha = 0
            self.yourReviewContentView.alpha = 1
            self.yourReview.setTitleColor(custumColour.appTheamPinkColour, for: .normal)
            self.userInfoButton.setTitleColor(.black, for: .normal)
        }
    }
    
}

extension ProfileViewController{
    private func setup(){
        self.profileImageView.layer.cornerRadius = 75
        self.profileView.layer.cornerRadius = 10
        self.addButton.layer.cornerRadius = 20
        self.userInfoButton.rounded(leftCorner: true, withWidth: 10, andHight: 10)
        self.yourReview.rounded(leftCorner: false, withWidth: 10, andHight: 10)
    }
}
