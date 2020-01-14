//
//  AccountAndCardTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 14/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class AccountAndCardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardHolder:UILabel!
    @IBOutlet weak var accountNumberOncard:UILabel!
    @IBOutlet weak var expireDate:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
