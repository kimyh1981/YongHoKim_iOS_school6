//
//  DetailViewController.swift
//  CheerUpBabyProject
//
//  Created by KimYong Ho on 2018. 2. 28..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var bgImgView: UIImageView!
    
    @IBOutlet weak var profileImgView: UIImageView!
    @IBOutlet weak var nickNameLb: UILabel!
    @IBOutlet weak var descriptionLb: UILabel!
    @IBOutlet weak var phoneNumLb: UILabel!
    @IBOutlet weak var emailLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
