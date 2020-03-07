//
//  AddressTableViewCell.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 17/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit
protocol AddressTableViewCellProtocol {
    func checkBoxPressed(WithTag tag:Int)
}

fileprivate var currentAddressSelected = -1

class AddressTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var address:UILabel!
    @IBOutlet weak var phoneNumber:UILabel!
    @IBOutlet weak var contentview:UIView!
    @IBOutlet weak var addressType:UILabel!
    @IBOutlet weak var checkBoxButton:UIButton!
    var delegate:AddressTableViewCellProtocol?

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
        setUp().makeCardView(forView: self.contentview, withShadowHight: 3, shadowWidth: 0, shadowOpacity: 0.45, shadowRadius: 8)
    }
    
    @IBAction func checkBoxButtonPressed(_ sender:UIButton){
        if currentAddressSelected != sender.tag{
            currentAddressSelected = sender.tag
            self.delegate?.checkBoxPressed(WithTag: currentAddressSelected)
        }
    }

}

extension AddressTableViewCell{
    //All private functions
    
    private func setup(){
        
    }
}
