//
//  WishListTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 16/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class WishListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productName:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    @IBOutlet weak var productImageColour:UIImageView!
    @IBOutlet weak var contentview:UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        self.contentview.layer.cornerRadius = 10
        self.productImageColour.layer.cornerRadius = 10
        setUp().makeCardView(forView: self.contentView, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 10)
    }

}
