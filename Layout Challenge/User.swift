//
//  User.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation

class User {
    
    static let usernameKey = "usernameKey"
    
    static func getUsername() -> String {
        if let username = UserDefaults.standard.value(forKey: usernameKey) as? String {
            return username
        }
        return ""
    }
    
    static func saveUsername(_ name: String) {
        UserDefaults.standard.set(name, forKey: usernameKey)
    }
    
}

