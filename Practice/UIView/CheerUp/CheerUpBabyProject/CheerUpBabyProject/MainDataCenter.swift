//
//  MainDataCenter.swift
//  CheerUpBabyProject
//
//  Created by KimYong Ho on 2018. 2. 28..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation
class MainDataCenter {
    static var sharedInstance: MainDataCenter = MainDataCenter()
    
    private var friendList: [[String:String]] = []
    
    var friendListCount: Int {
        return friendList.count
    }
    
    var friedListMode: [UserModel]
    {
        var list: [UserModel] = []
        for dictinary in friendList {
            list.append(UserModel(with: dictinary)!)
        }
        return list
    }
    
    private init()
    {
        loadFriendLis()
    }
    
    private func loadFriendLis()
    {
        let path = Bundle.main.path(forResource: "FriendInfo", ofType: "plist")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let property = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
        let list = property as! [[String: String]]
        
        friendList = list
        
    }
    func freindData(with index: Int) -> UserModel {
        let dic = friendList[index]
        return UserModel(with: dic)!
    }
}

/*
<key>PhoneNumber</key>

<key>ProfileImage</key>

<key>MyProfileDescription</key>


<key>BackgroundImage</key>

<key>StatusDescription</key>

<key>Nickname</key>

<key>Email</key>
*/




struct UserModel {
    var profileImgUrl: String
    var profileDecription: String
    var bgImgUrl: String
    var statusDescription: String
    var nickName: String
    var phoneNumber: String
    var email: String
    
    init?(with dic: [String: String]?){
        guard let profileImgUrl = dic!["ProfileImage"] else { return nil }
        guard let profileDecription = dic!["MyProfileDescription"] else { return nil }
        guard let bgImgUrl = dic!["BackgroundImage"] else { return nil }
        guard let statusDescription = dic!["StatusDescription"] else { return nil }
        guard let nickName = dic!["Nickname"] else { return nil }
        guard let phoneNumber = dic!["PhoneNumber"] else { return nil }
        guard let email = dic!["Email"] else { return nil }
        
        self.profileImgUrl = profileImgUrl
        self.profileDecription = profileDecription
        self.bgImgUrl = bgImgUrl
        self.statusDescription = statusDescription
        self.nickName = nickName
        self.phoneNumber = phoneNumber
        self.email = email

    }
}
