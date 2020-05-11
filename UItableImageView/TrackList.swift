//
//  TrackList.swift
//  UItableImageView
//
//  Created by Volodymyr Boichuk on 11.05.2020.
//  Copyright © 2020 Volodymyr Boichuk. All rights reserved.
//

import UIKit

class TrackList: UITableViewController {

    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
    "Dave Wincent - Red Eye (Original Mix)",
    "E-Spectro - End Station (Original Mix)",
    "Edna Ann - Phasma (Konstantin Yoodza Remix)",
    "Ilija Djokovic - Delusion (Original Mix)",
    "John Baptiste - Mycelium (Original Mix)",
    "Lane 8 - Fingerprint (Original Mix)",
    "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
    "Metodi Hristov, Gallya - Badmash (Original Mix)",
    "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

   
   // Присвоение при нажатии для отображения внутренней страницы. 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if segue.identifier == "Show Detail" {
//                if let indexPath = self.tableView.indexPathForSelectedRow {
//                    let detailSVC = segue.destination as! DetailsVC
//                    detailsVC.trackTitle = imageNameArray[indexPath.row]
}
