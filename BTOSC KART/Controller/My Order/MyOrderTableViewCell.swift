//
//  MyOrderTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 04/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class MyOrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var cellBackgroundView:UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyOrderTableViewCell{
    //All private function
    private func setup(){
        self.productImage.layer.cornerRadius = 5
        self.cellBackgroundView.layer.cornerRadius = 10
    }
}


