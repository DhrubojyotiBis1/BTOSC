//
//  MyViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 14/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func menuButtonPressed(_ sender:UIButton){
        switch sender.tag {
        case 2:
            performSegue(withIdentifier: segueIdentifier.addressVC, sender: nil)
        case 3:
            performSegue(withIdentifier: segueIdentifier.accountAndCardVC, sender: nil)
            break
            
        default:
            break
        }
    }

}
