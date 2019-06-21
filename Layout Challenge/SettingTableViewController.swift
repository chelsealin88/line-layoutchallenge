//
//  SettingTableViewController.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    enum Section: Int {
        case account = 0
        case sticker = 1
        case setting = 2
    }
    
    
    let arrayData1 = [Info(imagename: "profile", title: "Profile"),
                      Info(imagename: "account", title: "Account"),
                      Info(imagename: "privacy", title: "Privacy"),
                      Info(imagename: "account transfer", title: "Account Transfer"),
                      Info(imagename: "keep", title: "Keep")]
    
    
    let arrayData2 = [Info(imagename: "smile", title: "Sticker"),
                      Info(imagename: "themes", title: "Theme"),
                      Info(imagename: "coin", title: "Coins")]
    
    let arrayData3 = [Info(imagename: "notification", title: "Notifications"),
                      Info(imagename: "chat", title: "Chat")]

    

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
        

        if indexPath.section == Section.account.rawValue {
            let array1 = arrayData1[indexPath.row]
            cell.updateCell(array1)
//            return tableView(tableView, cellForAccountAt: indexPath)
        
        } else if indexPath.section == Section.sticker.rawValue {
            let array2 = arrayData2[indexPath.row]
            cell.updateCell(array2)
            
        } else if indexPath.section == Section.setting.rawValue {
            let array3 = arrayData3[indexPath.row]
            cell.updateCell(array3)

        }

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, cellForAccountAt indexPath: IndexPath) -> SettingTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SettingTableViewCell
        
        let array1 = arrayData1[indexPath.row]
        cell.updateCell(array1)
        return cell
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath == [0,0] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}



