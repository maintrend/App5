//
//  intFriday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class intFriday: UITableViewController {
    let imageNameIntFridayArray = ["Беговая дорожка (10 мин)",
                                   "Гиперэкстензия (3х15)",
                                   "Становая тяга (4х8)",
                                   "Тяга штанги в наклоне (3х8)",
                                   "Тяга верхнего блока (3х8)",
                                   "Тяга нижнего блока (3х10)",
                                   "Поднятие штанги на бицепс (3х8)",
                                   "Молот или сгибание рук с гантелями (3х10)"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNameIntFridayArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntFriday", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameIntFridayArray[indexPath.row])
        cell.textLabel?.text = imageNameIntFridayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowIntFriday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailIntFriday
                detailsVC.exerciseTitleIntFriday = imageNameIntFridayArray[indexPath.row]
            }
        }
    }
}
