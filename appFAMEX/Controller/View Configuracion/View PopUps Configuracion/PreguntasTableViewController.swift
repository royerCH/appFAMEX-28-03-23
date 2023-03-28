//
//  PreguntasTableViewController.swift
//  appFAMEX
//
//  Created by Desarrollador FAMEX on 21/03/23.
//

import UIKit

struct cellData {
    var opened = Bool()
    var title = String()
    var secctionData = [String]()
}

class PreguntasTableViewController: UITableViewController {

    var tableViewData = [cellData]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewData = [cellData(opened: false, title: "Title 1", secctionData: ["cell1", "cell2", "cell3"]),
                         cellData(opened: false, title: "Title 2", secctionData: ["cell1","cell2","cell3"]),
                         cellData(opened: false, title: "Title 2", secctionData: ["cell1","cell2","cell3"])
                         ]
        
    }
    
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return tableViewData.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableViewData[section].opened == true{
            return tableViewData[section].secctionData.count + 1
        }else{
            return 1
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
            
            cell.textLabel?.text = tableViewData[indexPath.section].title
            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].secctionData[indexPath.row]
            
            return cell
        }
    }
    
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
        if tableViewData[indexPath.section].opened == true{
            tableViewData[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }else{
            tableViewData[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
    }



}
}
