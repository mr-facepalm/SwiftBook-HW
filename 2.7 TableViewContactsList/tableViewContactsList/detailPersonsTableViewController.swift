//
//  detailPersonsTableViewController.swift
//  tableViewContactsList
//
//  Created by Vladislav Maslov on 31.03.2023.
//

import UIKit

class detailPersonsTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return "\(person.firstName) \(person.lastName)"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "detailPersonsTableViewController", for: indexPath)
        
        let person = persons[indexPath.section]
        
        // Определение типа ячейки в зависимости от индекса строки
        if indexPath.row == 0 {
            cell.textLabel?.text = "\(person.phone)"
            cell.imageView?.image = UIImage(systemName: "phone")
        } else {
            cell.textLabel?.text = "\(person.email)"
            cell.imageView?.image = UIImage(systemName: "mail")
        }
        
        return cell
    }
    
}
