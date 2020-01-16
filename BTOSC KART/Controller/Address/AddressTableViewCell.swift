//
//  AddressTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 17/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class AddressTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var address:UILabel!
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
        self.contentview.layer.cornerRadius = 7
        setUp().makeCardView(forView: self.contentview, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 10)
    }

}
