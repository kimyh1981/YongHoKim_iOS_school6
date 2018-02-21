//
//  LoginViewController.swift
//  NewProjectTableView
//
//  Created by KimYong Ho on 2018. 2. 21..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    var idTf: UITextField!
    var pwTf: UITextField!
    
    var loginBtn: UIButton!
    var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        updateLayOut()

        // Do any additional setup after loading the view.
    }
    private func createUI() {
        idTf = UITextField()
        idTf.placeholder = "ID Here"
        idTf.textAlignment = .left
        idTf.tag = 1
        idTf.delegate = self
        idTf.borderStyle = .roundedRect
        idTf.backgroundColor = UIColor.white
        view.addSubview(idTf)
        
        pwTf = UITextField()
        pwTf.placeholder = "Password Here"
        pwTf.textAlignment = .left
        pwTf.tag = 2
        pwTf.delegate = self
        pwTf.borderStyle = .roundedRect
        pwTf.backgroundColor = UIColor.white
        pwTf.keyboardType = .numbersAndPunctuation
        view.addSubview(pwTf)
        
        loginBtn = UIButton(type: .custom)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.gray, for: .normal)
        loginBtn.setTitleColor(.black, for: .highlighted)
        loginBtn.addTarget(self.touchUpInsideLoginBtn(_:), action: #selector(touchUpInsideLoginBtn(_:)), for: .touchUpInside)
        view.addSubview(loginBtn)
        
        signUpBtn = UIButton(type: .custom)
        signUpBtn.setTitle("SignUp", for: .normal)
        signUpBtn.setTitleColor(.gray, for: .normal)
        signUpBtn.setTitleColor(.black, for: .highlighted)
        signUpBtn.addTarget(self.touchUpInsideSignUpBtn(_:), action: #selector(touchUpInsideSignUpBtn(_:)), for: .touchUpInside)
        view.addSubview(signUpBtn)
    }
    
    func textFieldShouldReturn(_ sender: UITextField) -> Bool {
        if idTf.tag == 10 {
            pwTf.becomeFirstResponder()
        } else {
            pwTf.resignFirstResponder()
        }
        return true
    }
    
    @objc private func touchUpInsideLoginBtn(_ sender: UIButton) {
        if idTf.text! == idTf.text && pwTf.text! == pwTf.text{
        print("Login succeed.")
        } else {
            let alertVC
        }
    }
    
    @objc private func touchUpInsideSignUpBtn(_ sender: UIButton) {
        let alertVC0: UIAlertController = UIAlertController(title: "Sign-Up", message: "Open your ID", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Yes", style: .default) { (action) in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let signUpVC: SignUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
//            signUpVC.modalTransitionStyle = .coverVertical
            let navigation = storyboard.instantiateViewController(withIdentifier: "UINavigationController") as! UINavigationController
            self.present(navigation, animated: true, completion: nil)
            
        }
        let action2 = UIAlertAction(title: "No", style: .default) { (action) in
        }
        alertVC0.addAction(action1)
        alertVC0.addAction(action2)
        self.present(alertVC0, animated: true, completion: nil)
    }
    
    private func updateLayOut() {
        var offSetY:CGFloat = 150
        let inputFrameWidth: CGFloat = view.frame.size.width/2
        var offSetX:CGFloat = view.frame.size.width/2 - inputFrameWidth/2
        
        idTf.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
        offSetY += idTf.frame.size.height + 10
        pwTf.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
        offSetY += pwTf.frame.size.height + 30
        
        let btnMargin: CGFloat = 10
        loginBtn.frame = CGRect(x: offSetX, y: offSetY, width: (inputFrameWidth - btnMargin)/2, height: 50)
        offSetX += loginBtn.frame.size.width + btnMargin
        
        signUpBtn.frame = CGRect(x: offSetX, y: offSetY, width: (inputFrameWidth - btnMargin)/2, height: 50)
    }

 
}
