//
//  ViewController.swift
//  TableView2
//
//  Created by KimYong Ho on 2018. 2. 22..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let model: [Weather] = [
        Weather(city: "Seoul", tempature: "-5", time: "AM 03:50", imageFileName: "sunny2.jpg"),
        Weather(city: "London", tempature: "-2", time: "AM 08:50", imageFileName: "rainy2.jpg")
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: String, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: String, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
//        Weather(city: <#T##String#>, tempature: <#T##String#>, time: <#T##String#>, imageFileName: <#String#>),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: .zero)
        print(Bundle.main.bundlePath)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        let cellData = model[indexPath.row]
        cell.time1.text = cellData.time
        cell.city1.text = cellData.city
        cell.temp1.text = cellData.tempature
        cell.sunny1.image = UIImage(named: cellData.imageFileName)
//        if indexPath.row == 0 {
//            cell.sunny1.image = UIImage(named: "sunny2.jpg")
//            cell.time1.text = "AM 03:50"
//            cell.city1.text = "Seoul"
//            cell.temp1.text = "-5 ℃"
//
//        } else if indexPath.row == 1 {
//            cell.sunny1.image = UIImage(named: "rainy2.jpg")
//            cell.time1.text = "AM 08:50"
//            cell.city1.text = "London"
//            cell.temp1.text = "-2 ℃"
//        } else if indexPath.row == 2 {
//            cell.sunny1.image = UIImage(named: "cloudy2.jpg")
//            cell.time1.text = "AM 09:50"
//            cell.city1.text = "Mexico City"
//            cell.temp1.text = "23 ℃"
//        } else if indexPath.row == 3 {
//            cell.sunny1.image = UIImage(named: "snowy2.jpg")
//            cell.time1.text = "PM 03:50"
//            cell.city1.text = "Los Angeles"
//            cell.temp1.text = "19 ℃"
//        } else if indexPath.row == 4 {
//            cell.sunny1.image = UIImage(named: "sunny2.jpg")
//            cell.time1.text = "AM 08:50"
//            cell.city1.text = "NewYork"
//            cell.temp1.text = "-5 ℃"
//        } else if indexPath.row == 5 {
//            cell.sunny1.image = UIImage(named: "rainy2.jpg")
//            cell.time1.text = "PM 03:50"
//            cell.city1.text = "Paris"
//            cell.temp1.text = "4 ℃"
//        } else if indexPath.row == 6 {
//            cell.sunny1.image = UIImage(named: "snowy2.jpg")
//            cell.time1.text = "PM 03:50"
//            cell.city1.text = "Abudabi"
//            cell.temp1.text = "28 ℃"
//        } else if indexPath.row == 7 {
//            cell.sunny1.image = UIImage(named: "sunny2.jpg")
//            cell.time1.text = "AM 11:50"
//            cell.city1.text = "Shanghai"
//            cell.temp1.text = "11 ℃"
//        } else if indexPath.row == 8 {
//            cell.sunny1.image = UIImage(named: "rainy2.jpg")
//            cell.time1.text = "PM 03:50"
//            cell.city1.text = "Berlin"
//            cell.temp1.text = "-5 ℃"
//        } else if indexPath.row == 9 {
//            cell.sunny1.image = UIImage(named: "cloudy2.jpg")
//            cell.time1.text = "AM 04:50"
//            cell.city1.text = "Sydney"
//            cell.temp1.text = "20 ℃"
//        } else if indexPath.row == 10 {
//            cell.sunny1.image = UIImage(named: "sunny2.jpg")
//        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번이 열이 선택됨.")
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        
    }
    
    


}
