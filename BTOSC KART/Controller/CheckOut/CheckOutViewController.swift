//
//  CheckOutViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 05/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {
    
    @IBOutlet weak var deliveryAddressViewHight: NSLayoutConstraint!
    @IBOutlet weak var addressLable:UILabel!
    @IBOutlet weak var addressBackgroundView:UIView!
    @IBOutlet weak var paymentMethordBackgroundView:UIView!
    let massage = "Police Line Rd, IIT (ISM, Hirapur, Sardar Patel Nagar, Dhanbad, Jharkhand 826004"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
}

extension CheckOutViewController{
    //Private Functions
    
    private func setup(){
        addressLable.text = self.massage
        
        self.changeViewIfNeeded()
        self.addressBackgroundView.layer.cornerRadius = self.deliveryAddressViewHight.constant/6
        self.paymentMethordBackgroundView.layer.cornerRadius = 22
    }
    
    private func changeViewIfNeeded(){
        if self.addressLable.isTruncated{
            addressLable.numberOfLines = 0
            let maximumLabelSize: CGSize = CGSize(width: 280, height: 9999)
            let expectedLabelSize: CGSize = addressLable.sizeThatFits(maximumLabelSize)
            // create a frame that is filled with the UILabel frame data
            var newFrame: CGRect = addressLable.frame
            // resizing the frame to calculated size
            newFrame.size.height = expectedLabelSize.height
            // put calculated frame into UILabel frame
            addressLable.frame = newFrame
            //change hight
            self.deliveryAddressViewHight.constant += newFrame.height*0.8
        }
    }
}
