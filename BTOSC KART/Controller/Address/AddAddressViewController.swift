//
//  AddAddressViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 15/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class AddAddressViewController: UIViewController {

    @IBOutlet var textFieldLineView: [UIView]!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet  var allTextfield:[UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}

extension AddAddressViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let currentEditingTextFiledTag = textField.tag
        self.textFieldLineView[currentEditingTextFiledTag].backgroundColor = custumColour.appTheamPinkColour
        
        for i in 0..<self.allTextfield.count{
            if i != currentEditingTextFiledTag{
                self.textFieldLineView[i].backgroundColor = UIColor.lightGray
            }
        }
    }
}

extension AddAddressViewController{
    private func setup(){
        
        self.nextButton.layer.cornerRadius = 20
        for textField in self.allTextfield{
            textField.delegate = self
        }
    }
}
