//
//  begWednesday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class begWednesday: UITableViewController {
    
    let imageNameBegWednesdayArray = ["Беговая дорожка (10 мин)",
                                      "Жим ногами (2х10)",
                                      "Сгибание ног в тренажере (2х10)",
                                      "Разгибание ног в тренажере (2х10)",
                                      "Подъем на икры в тренажере (2х10)",
                                      "Скручивания (2х10)"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageNameBegWednesdayArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BegWednesday", for: indexPath)

         cell.imageView?.image = UIImage(named: imageNameBegWednesdayArray[indexPath.row])
         cell.textLabel?.text = imageNameBegWednesdayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowBegWednesday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailBegWednesday
                detailsVC.exerciseTitleBegWednesday = imageNameBegWednesdayArray[indexPath.row]
            }
        }
    }
}
