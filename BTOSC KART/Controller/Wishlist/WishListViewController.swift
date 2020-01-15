//
//  WishListViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 16/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController {
    
    @IBOutlet weak var wishlisttableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}

extension WishListViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.wishlisttableView.dequeueReusableCell(withIdentifier: "wishListTableViewCell") as! WishListTableViewCell
        
        return cell
    }
    
    
}

extension WishListViewController{
    private func setup(){
        self.wishlisttableView.delegate = self
        self.wishlisttableView.dataSource = self
    }
}
