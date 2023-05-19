//
//  shortPersonsTableViewController.swift
//  tableViewContactsList
//
//  Created by Vladislav Maslov on 31.03.2023.
//

import UIKit

class shortPersonsTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsSell", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = "\(person.firstName) \(person.lastName)"

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! PersonID
        if let indexPath = tableView.indexPathForSelectedRow {
            viewController.person = persons[indexPath.row]
        }
    }
}
