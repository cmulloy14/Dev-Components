//
//  ComponentSelectorTableViewController.swift
//  Dev Components
//
//  Created by Mulloy, Charles on 12/26/18.
//  Copyright © 2018 Pat Mulloy. All rights reserved.
//

import UIKit

enum Components: String, CaseIterable {
    case skeletonView = "Skeleton View"
    case stylish = "Stylish"
}

class ComponentSelectorTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Components.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Component Cell", for: indexPath)
        cell.textLabel?.text = Components.allCases[indexPath.row].rawValue

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Components.allCases[indexPath.row].rawValue, sender: self)
    }


}
