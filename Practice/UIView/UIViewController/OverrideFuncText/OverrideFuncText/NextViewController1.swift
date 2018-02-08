//
//  NextViewController1.swift
//  OverrideFuncText
//
//  Created by KimYong Ho on 2018. 2. 8..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backToMain(_ sender: UIButton) {
        let alertVC = UIAlertController(title: "확인", message: "작성하신 정보가 맞습니까", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "네", style: .default) { (action) in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let nextVC:ViewController =
                storyboard.instantiateViewController(withIdentifier: "ViewController")
                as! ViewController
            nextVC.modalTransitionStyle = .partialCurl
            
            self.present(nextVC, animated: true, completion: nil)
            print("============================")
        
        }
        let action2 = UIAlertAction(title: "아니오", style: .cancel) { (action) in
            
        }
        alertVC.addAction(action1)
        alertVC.addAction(action2)
        self.present(alertVC, animated: true, completion: nil)

    }
    
    
    
    @IBAction func backToFristPage(_ sender: Any) {
        let viewVC = ViewController()
        self.dismiss(animated: true, completion: nil)
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
