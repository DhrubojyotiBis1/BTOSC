//
//  NotificationTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 07/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var notificationText:UILabel!
    @IBOutlet weak var notificationImage:UIImageView!
    @IBOutlet weak var notificationDate:UILabel!
    

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

extension NotificationTableViewCell{
    //All private functions
    private func setup(){
        self.notificationImage.layer.cornerRadius = 45
    }
}
