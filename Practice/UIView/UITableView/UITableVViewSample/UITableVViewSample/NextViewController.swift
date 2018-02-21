//
//  NextViewController.swift
//  UITableVViewSample
//
//  Created by KimYong Ho on 2018. 2. 21..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var listOfNum: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tableView: UITableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell2")
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listOfNum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = listOfNum[indexPath.row]
        return cell
    }
    



}
