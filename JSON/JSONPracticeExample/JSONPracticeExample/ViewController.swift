//
//  ViewController.swift
//  JSONPracticeExample
//
//  Created by KimYong Ho on 2018. 3. 21..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let apiURL = URL(string: "http://api.open-notify.org/astros.json")!
        let dataTask = URLSession.shared.dataTask(with: apiURL) {(data, response, error) in
            print(data)
            print(response)
            print(error)
        }

        dataTask.resume()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
