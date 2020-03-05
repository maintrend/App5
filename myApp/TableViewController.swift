//
//  TableViewController.swift
//  myApp
//
//  Created by talgat on 2/26/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBAction func refreshControlAction(_ sender: Any) {
        loadNews {
                   DispatchQueue.main.async {
                    self.refreshControl?.endRefreshing()
                   self.tableView.reloadData()
                   }
            }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNews {
            DispatchQueue.main.async {
            self.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let article = articles[indexPath.row]
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.publishedAt
        
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToOneNews", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToOneNews" {
            if let indexPath = tableView.indexPathForSelectedRow {
                (segue.destination as? OneNewsViewController)?.article = articles[indexPath.row]
                tableView.deselectRow(at: indexPath, animated: true)
            }
        }
    }
}

