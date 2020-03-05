//
//  intMonday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class intMonday: UITableViewController {
    let imageNameIntMondayArray = ["Беговая дорожка (10 мин)",
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageNameIntMondayArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntMonday", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameIntMondayArray[indexPath.row])
        cell.textLabel?.text = imageNameIntMondayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowIntMonday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailIntMonday
                detailsVC.exerciseTitleIntMonday = imageNameIntMondayArray[indexPath.row]
            }
        }
    }
}
