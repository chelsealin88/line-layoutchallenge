//
//  SettingTableViewController.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    var datas: [SettingData] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        datas = createArray()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datas.count
    }
    
    func createArray() -> [SettingData] {
        
        var tempoData: [SettingData] = []
        
        let profile = SettingData(image: #imageLiteral(resourceName: "profile"), title: "Profile")
        let account = SettingData(image: #imageLiteral(resourceName: "account"), title: "Account")
        let privacy = SettingData(image: #imageLiteral(resourceName: "privacy"), title: "Privacy")
        let accountTransfer = SettingData(image: #imageLiteral(resourceName: "account transfer"), title: "Account Transfer")
        let keep = SettingData(image: #imageLiteral(resourceName: "keep"), title: "Keep")
        
        tempoData.append(profile)
        tempoData.append(account)
        tempoData.append(privacy)
        tempoData.append(accountTransfer)
        tempoData.append(keep)
        
        return tempoData
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SettingTableViewCell
        
        let data = datas[indexPath.row]
        
        cell.setDetail(settingData: data)

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
