//
//  YourReviewTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 15/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class YourReviewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView:UIImageView!
    @IBOutlet weak var review:UILabel!
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var contentview:UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
