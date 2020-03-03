//
//  MyCartTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 03/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class MyCartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellBackgroundView:UIView!
    @IBOutlet weak var addButton:UIButton!
    @IBOutlet weak var subtractButton:UIButton!

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

extension MyCartTableViewCell{
    //All private function
    private func setup(){
        self.cellBackgroundView.layer.cornerRadius = 10
        self.addButton.layer.cornerRadius = 10
        self.subtractButton.layer.cornerRadius = 10
        setUp().makeCardView(forView: self.cellBackgroundView, withShadowHight: 6, shadowWidth: 0, shadowOpacity:0.4, shadowRadius: 6)
    }
}
