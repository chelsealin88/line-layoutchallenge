
//
//  ProfileViewController.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // todo: 計算屬性
    var profiles = [
        Profile(title: "Display name", contain: User.getUsername()),
        Profile(title: "Status", contain: "測試"),
        Profile(title: "Phone number", contain: "+886")
    ]
    
    let arrayData1 = [Profile(title: "", contain: "Share Profile media updates")]
    let arrayDara2 = [Profile(title: "", contain: "LINE ID")
                        ]
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My profile"
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        profiles[0].contain = User.getUsername()
        tableview.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0: return profiles.count
        case 1: return arrayData1.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section){
        case 1: return " "
        case 2: return "Share Profile media updates on Timeline"
        default:
            return nil
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ProfileTableViewCell
        
        if indexPath.section == 0 {
            let profile = profiles[indexPath.row]
            cell.updateProfile(profile)
        } else if indexPath.section == 1 {
            let section1 = arrayData1[indexPath.row]
            cell.updateProfile(section1)
            // accessory View
            let switchObj = UISwitch(frame: CGRect(x: 1, y: 1, width: 20, height: 20))
            switchObj.isOn = false
            cell.accessoryView = switchObj
            
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    // header 
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.lightGray
//        let headerLabel = UILabel(frame: CGRect(x: 30, y: 0, width:
//            tableView.bounds.size.width, height: tableView.bounds.size.height))
//        headerLabel.font = UIFont(name: "Verdana", size: 20)
//        headerLabel.textColor = UIColor.white
//        headerLabel.text = self.tableView(self.tableView, titleForHeaderInSection: section)
//        headerLabel.sizeToFit()
//        headerView.addSubview(headerLabel)
//
//        return headerView
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath == [0,0] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "DisplayViewController") as! DisplayViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

