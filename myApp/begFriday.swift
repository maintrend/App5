//
//  begFriday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class begFriday: UITableViewController {
    let imageNameBegFridayArray = ["Гиперэкстензия (2х10)",
                                   "Тяга за голову в блочном тренажере (2х10)",
                                   "Тяга к пояснице в блочном тренажере (2х10)",
                                   "Разгибание рук в блочной раме (2х10)",
                                   "Поднятие штанги на бицепс (2х10)",
                                   "Беговая дорожка (10 мин)"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageNameBegFridayArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BegFriday", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameBegFridayArray[indexPath.row])
        cell.textLabel?.text = imageNameBegFridayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowBegFriday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailBegFriday
                detailsVC.exerciseTitleBegFriday = imageNameBegFridayArray[indexPath.row]
            }
        }
    }
}
