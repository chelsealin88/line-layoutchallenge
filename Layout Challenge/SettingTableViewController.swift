//
//  SettingTableViewController.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    
    let arrayData1 = [Info(image: "profile", title: "Profile"),
                      Info(image: "account", title: "Account"),
                      Info(image: "privacy", title: "Privacy"),
                      Info(image: "account transfer", title: "Account Transfer"),
                      Info(image: "keep", title: "Keep")]
    
    
    let arrayData2 = [Info(image: "smile", title: "Sticker"),
                      Info(image: "themes", title: "Theme"),
                      Info(image: "coin", title: "Coins")]
    
    let arrayData3 = [Info(image: "notification", title: "Notifications"),
                      Info(image: "chat", title: "Chat")]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigationBar = navigationController?.navigationBar

        
        navigationBar?.tintColor = .white
        navigationBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationBar?.barTintColor = UIColor(red: 24/255, green: 37/255, blue: 125/255, alpha: 49/255)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch (section) {
        case 0: return arrayData1.count
        case 1: return arrayData2.count
        case 2: return arrayData3.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch (section) {
        case 0: return " "
        case 1: return " "
        case 2: return " "
        default: return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SettingTableViewCell

        if indexPath.section == 0 {
            cell.iconimage.image = UIImage(named: arrayData1[indexPath.row].image)
            cell.titleLabel.text = arrayData1[indexPath.row].title
        } else if indexPath.section == 1 {
            cell.iconimage.image = UIImage(named: arrayData2[indexPath.row].image)
            cell.titleLabel.text = arrayData2[indexPath.row].title
        } else if indexPath.section == 2 {
            cell.iconimage.image = UIImage(named: arrayData3[indexPath.row].image)
            cell.titleLabel.text = arrayData3[indexPath.row].title
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath == [0,0] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
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



