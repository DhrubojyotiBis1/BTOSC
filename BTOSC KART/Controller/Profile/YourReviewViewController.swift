//
//  YourReviewViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 15/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class YourReviewViewController: UIViewController {
    
    @IBOutlet weak var reviewTableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}

extension YourReviewViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.reviewTableView.dequeueReusableCell(withIdentifier: "reviewTableViewCell") as! YourReviewTableViewCell
        
        cell.contentview.layer.cornerRadius = 10
        
        return cell
        
    }
    
    
    
    
}

extension YourReviewViewController{
    
    private func setup(){
        
        self.reviewTableView.dataSource = self
        self.reviewTableView.delegate = self
        
    }
    
}
