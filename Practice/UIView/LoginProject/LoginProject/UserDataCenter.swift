//
//  UserDataCenter.swift
//  LoginProject
//
//  Created by KimYong Ho on 2018. 2. 26..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class UserDataCenter {
    static var main: UserDataCenter = UserDataCenter()
    
    var isLogin: Bool?
    
    private var userList: [String] = []
    
    func login(userID: String, userPW: String) -> Bool
    {
        return true
    }
    
}
