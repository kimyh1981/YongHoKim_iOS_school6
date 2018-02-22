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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        if indexPath.row == 0 {
            cell.sunny1.image = UIImage(named: "sunny.jpg")
            cell.time1.text = "오전 03:50"
            cell.city1.text = "부산"
            cell.temp1.text = "-5"
        } else if indexPath.row == 1 {
            cell.sunny1.image = UIImage(named: "rainy.jpg")
        } else if indexPath.row == 2 {
            cell.sunny1.image = UIImage(named: "cloudy.jpg")
        } else if indexPath.row == 3 {
            cell.sunny1.image = UIImage(named: "snowy.jpg")
        } else if indexPath.row == 4 {
            cell.sunny1.image = UIImage(named: "snowy.jpg")
        } else if indexPath.row == 5 {
            cell.sunny1.image = UIImage(named: "snowy.jpg")
        } else if indexPath.row == 6 {
            cell.sunny1.image = UIImage(named: "snowy.jpg")
        } else if indexPath.row == 7 {
            cell.sunny1.image = UIImage(named: "cloudy.jpg")
        } else if indexPath.row == 8 {
            cell.sunny1.image = UIImage(named: "cloudy.jpg")
        } else if indexPath.row == 9 {
            cell.sunny1.image = UIImage(named: "cloudy.jpg")
        } else if indexPath.row == 10 {
            cell.sunny1.image = UIImage(named: "cloudy.jpg")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    


}
