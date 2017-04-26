//
//  AreaTableViewController.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/19/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit
import os.log

class AreaTableViewController: UITableViewController {
    // MARK: *** Data model
    var modelArea: [Area] = [
        Area(name: "Area A"),
        Area(name: "Area B"),
        Area(name: "Area C")
    ];
    
    // MARK: *** UI Elements
    
    // MARK: *** UI events
    @IBAction func unwindToAreaList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? AreaViewController, let area = sourceViewController.area {
            // Add a new area.
            let newIndexPath = IndexPath(row: modelArea.count, section: 0)
            
            modelArea.append(Area(name: area.name))
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
    // MARK: *** Local variables
    
    // MARK: *** UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return modelArea.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "areaCell", for: indexPath)
                as! AreaTableViewCell
        cell.AreaImg.image = UIImage(named: "Areas")
        cell.NameAreaLbl.text = modelArea[indexPath.row].name
        cell.NumTableInAreaLbl.text = "\(5)"

        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        switch segue.identifier ?? "" {
        case "AddArea":
            os_log("Adding a new Area.", log: OSLog.default, type: .debug)
        case "ShowDetail":
            guard let areaDetailViewController = segue.destination as? AreaViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedAreaCell = sender as? AreaTableViewCell else {
                fatalError("Unexpected sender: \(sender)")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedAreaCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedArea = modelArea[indexPath.row]
            areaDetailViewController.area = selectedArea
        default:
            fatalError("Unexpected Segue Identifier; \(segue.identifier)")
//            os_log("Default", log: OSLog.default, type: .debug)
        }
    }

}
