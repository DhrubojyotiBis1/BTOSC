//
//  AddressViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 17/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

struct addressVCStuff {
    static let selecedCheckBoxImage = #imageLiteral(resourceName: "checked")
    static let unChekedBoxImage = #imageLiteral(resourceName: "uncheckBox")
}

class AddressViewController: UIViewController {
    
    @IBOutlet weak var savedAddressTableView:UITableView!
    @IBOutlet weak var addNewAddressButton:UIButton!
    private var currentlySelecetedAddress = -1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func addAddressButtonPressed(_ sender:UIButton){
        performSegue(withIdentifier: segueIdentifier.addAddressVcC, sender: nil)
    }

}

extension AddressViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.savedAddressTableView.dequeueReusableCell(withIdentifier: "addressTableViewCell") as! AddressTableViewCell
        
        
        //setting delegate
        cell.delegate = self
        
        //changing UI properties
        cell.name.text = "Dhrubojyoti Biswas"
        cell.phoneNumber.text = "918961388276"
        cell.address.text = "Police Line Rd, IIT (ISM, Hirapur, Sardar Patel Nagar, Dhanbad, Jharkhand 826004"
        cell.addressType.text = "Home"
        cell.checkBoxButton.tag = indexPath.row
        cell.checkBoxButton.setImage(addressVCStuff.unChekedBoxImage, for: .normal)
        
        
        if currentlySelecetedAddress == indexPath.row{
            cell.checkBoxButton.setImage(addressVCStuff.selecedCheckBoxImage, for: .normal)
        }
        
        return cell
    }
    
    
    
}

extension AddressViewController:AddressTableViewCellProtocol{
    func checkBoxPressed(WithTag tag: Int) {
        self.currentlySelecetedAddress = tag
        self.savedAddressTableView.reloadData()
    }
}

extension AddressViewController{
    //All private functions
    private func setup(){
        //setting delegates
        self.savedAddressTableView.delegate = self
        self.savedAddressTableView.dataSource = self
        
        
        setUp().makeCardView(forButton: self.addNewAddressButton, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 10, cornerRadius: 5)
    }
}
