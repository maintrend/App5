//
//  intWednesday.swift
//  myApp
//
//  Created by talgat on 2/19/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class intWednesday: UITableViewController {
    let imageNameIntWednesdayArray = ["Беговая дорожка (10 мин)",
                                      "Приседание со штангой(4х6-8)",
                                      "Выпады с гантелями(4х6-8)",
                                      "Разгибание ног в тренажере(4х6-8)",
                                      "Упражнения на икры(4х6-8)",
                                      "Тяга нижнего блока к подбородку(4х6-8)",
                                      "Жим Арнольда с гантелями(4х6-8)",
                                      "Разведение гантелей через стороны(4х6-8)"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageNameIntWednesdayArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntWednesday", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameIntWednesdayArray[indexPath.row])
        cell.textLabel?.text = imageNameIntWednesdayArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowIntWednesday"  {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailIntWednesday
                detailsVC.exerciseTitleIntWednesday = imageNameIntWednesdayArray[indexPath.row]
            }
        }
    }
}
