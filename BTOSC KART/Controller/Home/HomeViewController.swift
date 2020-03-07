//
//  HomeViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 06/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var subViewCollection:[UIView]!
    @IBOutlet var eachCatagoryBackgroundView:[UIView]!
    @IBOutlet var catagoryImagebackgroundView:[UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}

extension HomeViewController{
    //All private function
    private func setup(){
        for i in 0..<subViewCollection.count{
            //making each view card view
            setUp().makeCardView(forView: self.subViewCollection[i], withShadowHight: 3, shadowWidth: 0, shadowOpacity: 0.1, shadowRadius: 0)
        }
        
        for i in 0..<self.eachCatagoryBackgroundView.count{
            //making each catagory card view
            setUp().makeCardView(forView: self.eachCatagoryBackgroundView[i], withShadowHight: 3, shadowWidth: 0, shadowOpacity: 0.23, shadowRadius: 3)
        }
        
        for i in 0..<self.catagoryImagebackgroundView.count{
            self.catagoryImagebackgroundView[i].layer.cornerRadius = 36
        }
    }
}
