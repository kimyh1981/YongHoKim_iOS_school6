//
//  MyUserDefault.swift
//  PListSample
//
//  Created by KimYong Ho on 2018. 2. 27..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation


class MyUserDefaults {
    //Document에 바로 만들거이기 때문에
    let fileName = "MyUserDefaults.plist"
    private var fullPath: String
    private var fileURL: URL
    static var standard: MyUserDefaults = MyUserDefaults()
    
    private init() {
        //경로가져오기
        let directoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let fullPath = directoryPath + "/" + fileName
        fileURL = URL(fileURLWithPath: fullPath)
        
    }
    
    
    
    //키값을 받아서 해당 키값의 값을 리턴해 주는 함수
    func object(forkey defaultName: String) -> Any? {
        
        if !FileManager.default.fileExists(atPath: fullPath)
        {
            //만약에 경로상에 파일이 없다면 return nil
            return nil
        }
        //파일 불러오기
        let data = try! Data(contentsOf: fileURL)
        let propertyList = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
            
        //크래쉬가 날 경우 set메소드에서 로직 에러가 있겠지!
        let dic = propertyList as! [String: Any]
        return dic[defaultName]
    
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        var dic: [String: Any?]!
        if FileManager.default.fileExists(atPath: fullPath)
        {
            let data = try! Data(contentsOf: fileURL)
            let propertyList = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
            dic = propertyList as! [String: Any?]
            dic.updateValue(value, forKey: defaultName)
        } else {
            dic = [defaultName: value]
        }
        //Save
        let newData = try! PropertyListSerialization.data(fromPropertyList: fileURL, format: <#T##PropertyListSerialization.PropertyListFormat#>, options: <#T##PropertyListSerialization.WriteOptions#>)
        }
    }
    
    func removeObject(forKey defaultName: String) {
        
    }
    
}
