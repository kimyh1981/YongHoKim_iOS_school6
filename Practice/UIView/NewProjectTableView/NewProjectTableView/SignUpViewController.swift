//
//  SignUpViewController.swift
//  NewProjectTableView
//
//  Created by KimYong Ho on 2018. 2. 21..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

let USER_LIST: "String:String"
class SignUpViewController: UIViewController, UITextFieldDelegate{

    private var idTF: UITextField!
    private var pwTF: UITextField!
    private var signBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Open New ID"
        let item: UIBarButtonItem = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(backToMain(_:)))
        item.title = "Back"
        self.navigationItem.leftBarButtonItem = item
        
        createTF()
        createBtn()
        updateLayOut()
    }
    
    
    fileprivate func createTF() {
        idTF = UITextField()
        idTF.placeholder = "ID Here"
        idTF.textAlignment = .left
        idTF.tag = 1
        idTF.delegate = self
        idTF.borderStyle = .roundedRect
        idTF.backgroundColor = UIColor.white
        view.addSubview(idTF)
        
        pwTF = UITextField()
        pwTF.placeholder = "Password Here"
        pwTF.textAlignment = .left
        pwTF.tag = 2
        pwTF.delegate = self
        pwTF.borderStyle = .roundedRect
        pwTF.backgroundColor = UIColor.white
        pwTF.keyboardType = .numbersAndPunctuation
        view.addSubview(pwTF)
    }
    
    fileprivate func createBtn() {
        signBtn = UIButton()
        signBtn = UIButton(type: .custom)
        signBtn.setTitle("SignUp", for: .normal)
        signBtn.setTitleColor(.gray, for: .normal)
        signBtn.setTitleColor(.black, for: .highlighted)
        signBtn.layer.borderColor = UIColor.gray.cgColor
        signBtn.layer.borderWidth = 0.5
//        signBtn.addTarget(self, action: #selector(signUp(_:)), for: .touchUpInside)
        view.addSubview(signBtn)
        
    }
    fileprivate func updateLayOut() {
        var offSetY: CGFloat = 150
        let inputFrameWidth: CGFloat = view.frame.size.width/1.5
        var offSetX: CGFloat = view.frame.size.width/2 - inputFrameWidth/2
        
        idTF.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
        offSetY += idTF.frame.size.height + 10
        pwTF.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
        offSetY += pwTF.frame.size.height + 30
        
        let btnMargin: CGFloat = 10
        signBtn.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
    }
    
    @objc func backToMain (_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func signUp(_ sender: UIButton) {
        if checkInputValid() {
            let id: String = idTF.text!
            let pw: String = pwTF.text!

            let userInfo: [String:String] = ["user_id":id, "user_pw":pw]
            if var userList = UserDefaults.standard.array(forKey: USER_LIST) as? [[String:String]] {
                userList.append(userInfo)
                UserDefaults.standard.set(userList, forKey: USER_LIST)
            } else {
                var userList: [[String:String]] = []
                userList.append(userInfo)
                UserDefaults.standard.set(userList, forKey: USER_LIST)
            }

            self.navigationController?.dismiss(animated: true, completion: nil)
        }

    }

    
    private func checkInputValid() -> Bool {
        if pwTF.text!.count > 4 {
            return true
        } else {
            let alertVC: UIAlertController = UIAlertController(title: "Problem happend.", message: "Password must be 4digit numbers.", preferredStyle: .alert)
            let action: UIAlertAction = UIAlertAction(title: "Check", style: .cancel, handler: nil)
            alertVC.addAction(action)
            self.present(alertVC, animated: true, completion: nil)
        }
        return true
    }
    
    func textFieldShouldReturn(_ idTF: UITextField) -> Bool {
        if self.idTF.isFirstResponder {
            pwTF.becomeFirstResponder()
        } else if self.pwTF.isFirstResponder {
            pwTF.resignFirstResponder()
        }
        return true
    }

}
