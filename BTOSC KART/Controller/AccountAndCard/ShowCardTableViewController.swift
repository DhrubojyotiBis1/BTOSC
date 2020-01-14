//
//  ShowCardTableViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 14/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ShowCardTableViewController: UIViewController {

    @IBOutlet weak var cardDisplayTableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
    }

    // MARK: - Table view data source
}

extension ShowCardTableViewController:UITableViewDelegate,UITableViewDataSource{
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.cardDisplayTableView.dequeueReusableCell(withIdentifier: "accountAndCardTableViewCell") as! AccountAndCardTableViewCell
        
        return cell
    }
}

extension ShowCardTableViewController{
    private func setup(){
        self.cardDisplayTableView.delegate = self
        self.cardDisplayTableView.dataSource = self
    }
}
