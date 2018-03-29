//
//  ViewController.swift
//  KakaoTestApp
//
//  Created by KimYong Ho on 29/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction private func kakaoLogin(_ sender: UIButton) {
        guard let session = KOSession.shared() else { return }
        
    // Close Old Session
        session.isOpen() ? session.close() : ()
        session.open(completionHandler: { (error) in
            guard session.isOpen() else {
                error != nil ? print(error!.localizedDescription) : print("canceled")
                return
            }
            print("Login Sucess")
        }, authTypes: [NSNumber(value: KOAuthType.talk.rawValue)])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

