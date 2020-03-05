//
//  advMonday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class advMonday: UITableViewController {
    let imageNameAdvMondayArray = ["Беговая дорожка (10 мин)",
                                   "Жим штанги лежа (4х6-8)",
                                   "Жим гантели лежа на накл скамье(3х8)",
                                   "Жим штанги вниз головой(3х8)",
                                   "Сведение рук в кроссовере(3х8)",
                                   "Французский жим лежа(3х8)",
                                   "Разгибание рук на блоке(3х10)",
                                   "Скручивания"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameAdvMondayArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvMonday", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameAdvMondayArray[indexPath.row])
        cell.textLabel?.text = imageNameAdvMondayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowAdvMonday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailAdvMonday
                detailsVC.exerciseTitleAdvMonday = imageNameAdvMondayArray[indexPath.row]
            }
        }
    }
}
