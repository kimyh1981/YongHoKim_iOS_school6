//
//  ViewController.swift
//  NotificationSample2
//
//  Created by KimYong Ho on 2018. 2. 25..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var data: [String] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notiCenter = NotificationCenter.default
        notiCenter.addObserver(self, selector: #selector(notiAction(_:)), name: NSNotification.Name(rawValue: "KeyName"), object: nil)
        
    }
    @objc func notiAction(_ noti: Notification) {
        let msg = noti.object as! String
        data.append(msg)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

