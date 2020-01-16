//
//  AddressViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 17/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController {
    
    @IBOutlet weak var savedAddressTableView:UITableView!
    @IBOutlet weak var addNewAddressButton:UIButton!

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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.savedAddressTableView.dequeueReusableCell(withIdentifier: "addressTableViewCell") as! AddressTableViewCell
        
        return cell
    }
    
    
    
}


extension AddressViewController{
    private func setup(){
        self.savedAddressTableView.delegate = self
        self.savedAddressTableView.dataSource = self
        
        
        setUp().makeCardView(forButton: self.addNewAddressButton, withShadowHight: 4, shadowWidth: 0, shadowOpacity: 0.3, shadowRadius: 10, cornerRadius: 5)
    }
}
