//
//  MyOrderViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 04/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

struct myOrderConstantStrings {
    static let tableViewCellIdentifier = "myOrderTableViewCell"
}


class MyOrderViewController: UIViewController {
    
    @IBOutlet weak var myOrderTableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func backButtonPressed(_ sender:UIButton){
        self.dismiss(animated: true) {
            
        }
    }

}
extension MyOrderViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.myOrderTableView.dequeueReusableCell(withIdentifier: myOrderConstantStrings.tableViewCellIdentifier) as! MyOrderTableViewCell
        
        return cell
    }
    
    
}

extension MyOrderViewController{
    //All private functions
    
    private func setup(){
        // setting delegates and data source
        self.myOrderTableView.delegate = self
        self.myOrderTableView.dataSource = self
    }
}
