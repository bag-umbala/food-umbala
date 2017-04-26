//
//  MenuTableViewController.swift
//  Food-Umbala
//
//  Created by Nam Vo on 4/13/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    @IBOutlet weak var menuSegmentedControl: UISegmentedControl!
    
    //MARK: Properties
    
    var menuItems = [MenuItem]()
    
    //MARK: Private Methods
    
    private func loadSampleData() {
        let photo = UIImage(named: "NoPhoto")
        
        guard let menuItem1 = MenuItem(name: "Caprese Salad", photo: photo, price: 4) else {
            fatalError("Unable to instantiate menuItem1")
        }
        
        guard let menuItem2 = MenuItem(name: "Chicken and Potatoes", photo: photo, price: 5) else {
            fatalError("Unable to instantiate menuItem2")
        }
        
        guard let menuItem3 = MenuItem(name: "Pasta with Meatballs", photo: photo, price: 3) else {
            fatalError("Unable to instantiate menuItem3")
        }
        
        menuItems += [menuItem1, menuItem2, menuItem3]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the sample data.
        loadSampleData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MenuTableViewCell"
        
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MenuTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MenuTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let menuItem = menuItems[indexPath.row]
        
        cell.nameLabel.text = menuItem.name
        cell.menuItemImage.image = menuItem.photo
        cell.priceLabel.text = String(menuItem.price)
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Segmented Control
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch menuSegmentedControl.selectedSegmentIndex {
        case 0:
            NSLog("Show Food Menu")
            break
        case 1:
            NSLog("Show Drink Menu")
            break
        default:
            break;
        }
    }
}
