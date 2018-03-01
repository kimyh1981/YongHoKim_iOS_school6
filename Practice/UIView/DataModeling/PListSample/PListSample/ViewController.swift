//
//  ViewController.swift
//  PListSample
//
//  Created by KimYong Ho on 2018. 2. 27..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loadDataDic = loadPlistData(fileName: "Sample")
        print(loadDataDic!["Name"]!)
    }
//작성 방법 1
//    func loadPlistData(fileName: String) -> [String: String] {
//        //1. Path 가져오기
//        if let path = Bundle.main.path(forResource: fileName, ofType: "plist")
//        {
//            //2. Data 로드
//            do {
//                let data = try Data(contentsOf: URL(fileURLWithPath: path))
//                let dic = try PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! [String: String]
//
//                return dic
//
//            } catch {
//                print("에러")
//            }
//        }
//        return [:]
//    }

//작성 방법 2
    func loadPlistData(fileName: String) -> [String: String]? {
        //1. Path
        //2. Data load
        if let path = Bundle.main.path(forResource: fileName, ofType: "plist"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        {
            let dic = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! [String: String]
            
            return dic
        }
        return nil
    }
    
    func  loadPlistForDoc(fileName: String) -> [String: String]? {
        let rootPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let fullPath = rootPath + "/" + fileName + ".plist"
        
        if !FileManager.default.fileExists(atPath: fullPath) {
            //번들 경로
            //번들에 있는 데이터를 도큐먼트에 복사 -> copy
            if let bundlePath = Bundle.main.path(forResource: fileName, ofType: "plist")
            {
                try? FileManager.default.copyItem(atPath: bundlePath, toPath: fullPath)
            }
        }
        if let data = try? Data(contentsOf: URL(fileURLWithPath: fullPath)),
        var dic = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! [String: String]
        {
            dic.updateValue("", forKey: "sdf")
            
            //dictionary를 data로 변경
            let newData = try! PropertyListSerialization.data(fromPropertyList: dic, format: .xml, options: 0)
            try? newData.write(to: URL(fileURLWithPath: fullPath))
        }
        return nil
    }
}


