//
//  begMonday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class begMonday: UITableViewController {

    let imageNameBegMondayArray = ["Беговая дорожка (10 мин)",
                                   "Жим штанги лежа (2х10)",
                                   "Пулловер (2х10)",
                                   "Разведение гантелей на скамье (2х10)",
                                   "Поднятие ног в висе на пресс (2х10)"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageNameBegMondayArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BegMonday", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameBegMondayArray[indexPath.row])
        cell.textLabel?.text = imageNameBegMondayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowBegMonday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailBegMonday
                detailsVC.exerciseTitle = imageNameBegMondayArray[indexPath.row]
            }
        }
    }
}
