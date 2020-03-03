//
//  MyCartViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 03/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

struct myCartConstantString {
    static let cellIdentifier = "myCarttableViewCell"
}

class MyCartViewController: UIViewController {
    
    @IBOutlet weak var myCartTableView:UITableView!
    @IBOutlet weak var payButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
}

extension MyCartViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myCartTableView.dequeueReusableCell(withIdentifier: myCartConstantString.cellIdentifier) as! MyCartTableViewCell
        
        return cell
    }
    
    
}

//All private function
extension MyCartViewController{

    private func setup(){
        // Setting delegates
        self.myCartTableView.delegate = self
        self.myCartTableView.dataSource = self
        
        self.payButton.layer.cornerRadius = 25
    }
}
