//
//  AddItemTableViewController.swift
//  Checklists
//
//  Created by KimYong Ho on 05/07/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }

    
}
