//
//  TableViewController.swift
//  API Test Project
//
//  Created by KimYong Ho on 29/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import UIKit

class ListTableViewControllr: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")

        // Do any additional setup after loading the view.
    }



}

extension ListTableViewControllr: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}









