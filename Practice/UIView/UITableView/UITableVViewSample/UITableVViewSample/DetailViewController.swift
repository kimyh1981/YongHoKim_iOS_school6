//
//  DetailViewController.swift
//  UITableVViewSample
//
//  Created by KimYong Ho on 2018. 2. 21..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let listOfAlphabet: [String] = ["A", "B", "C", "D", "E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfAlphabet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = listOfAlphabet[indexPath.row]
        return cell
    }

   


}
