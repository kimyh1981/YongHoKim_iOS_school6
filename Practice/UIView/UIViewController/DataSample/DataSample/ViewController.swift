//
//  ViewController.swift
//  DataSample
//
//  Created by KimYong Ho on 2018. 2. 9..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

//아래 let은 상수 선언만 한 거임.
let key = "UserNameList"
class ViewController: UIViewController, UITextFieldDelegate {
    var idTF: UITextField!
    var pwTF: UITextField!
    var loginBtn: UIButton!
    var signBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        createTF()
        createBtn()
    }

    func createTF() {
        idTF = UITextField()
        idTF.placeholder = "ID here."
        idTF.frame = CGRect(x: 15, y: 100, width: view.frame.size.width * 0.9, height: 50)
        idTF.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        idTF.layer.borderWidth = 0.8
        idTF.textColor = UIColor.black
        idTF.delegate = self
        idTF.tag = 1
        idTF.becomeFirstResponder()
        idTF.addTarget(self, action: #selector(textFieldShouldReturn(_:)), for: .touchUpInside)
        view.addSubview(idTF)
        
        pwTF = UITextField()
        pwTF.placeholder = "PW here."
        pwTF.frame = CGRect(x: 15, y: 160, width: view.frame.size.width * 0.9, height: 50)
        pwTF.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        pwTF.layer.borderWidth = 0.8
        pwTF.textColor = UIColor.black
        pwTF.delegate = self
        pwTF.tag = 2
        pwTF.addTarget(self, action: #selector(textFieldShouldReturn(_:)), for: .touchUpInside)
        view.addSubview(pwTF)
    }
    @objc func textFieldShouldReturn(_ idTF: UITextField) -> Bool {
        if idTF.tag == 1 {
            pwTF.becomeFirstResponder()
        } else if idTF.tag == 2 {
            pwTF.resignFirstResponder()
        }
        return true
    }
    
    func createBtn() {
        loginBtn = UIButton()
        loginBtn.frame = CGRect(x: 15, y: 220, width: 50, height: 50)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.addTarget(self, action: #selector(login(_:)), for: .touchUpInside)
        view.addSubview(loginBtn)
        
        signBtn = UIButton()
        signBtn.frame = CGRect(x: 300, y: 220, width: 50, height: 50)
        signBtn.setTitle("Sign", for: .normal)
        signBtn.setTitleColor(.black, for: .normal)
        signBtn.addTarget(self, action: #selector(newSign(_:)), for: .touchUpInside)
        view.addSubview(signBtn)
    }
    @objc func newSign(_ sender: Any) {
        if var list = UserDefaults.standard.array(forKey: key) as? [String] {
            list.append(idTF.text!)
            UserDefaults.standard.set(list, forKey: key)
        } else {
            let newNameList = [idTF.text!]
            UserDefaults.standard.set(newNameList, forKey: key)
        }
    }

    
    @objc func login(_ sender: Any) {
        if let list = UserDefaults.standard.array(forKey: key) as? [String] {
            for name in list {
                if idTF.text == name {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let nextVC: NextViewController = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
                    nextVC.modalTransitionStyle = .flipHorizontal
                    self.present(nextVC, animated: true, completion: nil)
                } else {
                    let alertVC = UIAlertController(title: "Failed to login", message: "Go to sign?", preferredStyle: .alert)
                    let action1 = UIAlertAction(title: "Yes", style: .default) { (action) in
                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                        let nextVC1: SignViewController = storyboard.instantiateViewController(withIdentifier: "SignViewController") as! SignViewController
                        nextVC1.modalTransitionStyle = .flipHorizontal
                        self.present(nextVC1, animated: true, completion: nil)
                    }
                    let action2 = UIAlertAction(title: "No", style: .default) { (action) in
                        
                    }
                    alertVC.addAction(action1)
                    alertVC.addAction(action2)
                    
                    self.present(alertVC, animated: true, completion: nil)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

