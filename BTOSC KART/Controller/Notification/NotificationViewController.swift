//
//  NotificationViewController.swift
//  BTOSC KART
//
//  Created by Dhrubojyoti on 07/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

struct notificationCellIdentifier {
    static let header = "NotificationHeaderCell"
    static let notification = "notificationCell"
}

class NotificationViewController: UIViewController {
    
    @IBOutlet weak var notificationTableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }

}


extension NotificationViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 3 == 0{
            //for header
            let cell = notificationTableView.dequeueReusableCell(withIdentifier: notificationCellIdentifier.header) as! NotificationHeaderTableViewCell
            
            return cell
        }else{
            //for notification
            let cell = notificationTableView.dequeueReusableCell(withIdentifier: notificationCellIdentifier.notification) as! NotificationTableViewCell
            cell.notificationText.text = "You recived a paymentof $860 from Yogie Ismanda"
            
            return cell
        }
    }
}

extension NotificationViewController{
    //All private functions
    private func setup(){
        self.notificationTableView.delegate = self
        self.notificationTableView.dataSource = self
    }
}
