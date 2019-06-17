
//
//  DisplayViewController.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit


class DisplayViewController: UIViewController{
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = User.getUsername()

        title = "Display Name"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        User.saveUsername(textField.text!)
        
        self.navigationController?.popViewController(animated: true)
        
        //back to profile when press save
        
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
