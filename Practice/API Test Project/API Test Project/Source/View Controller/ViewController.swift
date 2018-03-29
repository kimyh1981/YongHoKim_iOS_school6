//
//  ViewController.swift
//  API Test Project
//
//  Created by KimYong Ho on 27/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var source: [Post]?
    
    //MARK: Sign-up
    @IBOutlet weak var inputUserName: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBAction func signUp(_ sender: Any) {
        let urlString = "https://api.lhy.kr/members/signup/"
        let parameter: Parameters = [
            "username": inputUserName.text!,
            "password": inputPassword.text!,
        ]

        Alamofire
            .request(urlString, method: .post, parameters: parameter)
            .responseData { (response) in
                switch response.result {
                case .success(let data):
                    print("value : \(data)")
                case .failure(let erro):
                    print(erro.localizedDescription)
            }
        }
    }
    
    //MARK: Login
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func logIn(_ sender: UIButton) {
        let urlString = "https://api.lhy.kr/members/auth-token/"
        let parameter: Parameters = [
            "username": username.text!,
            "password": password.text!,
            ]
        Alamofire
            .request(urlString, method: .post, parameters: parameter)
            .validate()
            .responseData { (response) in
                switch response.result {
                case .success(let data):
                    print("value : \(data)")
                    let tableViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableView") as! ListTableViewControllr
                    self.present(tableViewController, animated: true, completion: nil)
                case .failure(let erro):
                    print(erro.localizedDescription)
                }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://api.lhy.kr")
        .validate()
            .responseData { (response) in
                switch response.result {
                case .success(let value):
                    print("value: \(value)")
                case .failure(let error):
                    print(error.localizedDescription)
                }
        }
        signUp()
        logIn()
        inputPassword.delegate = self
        inputUserName.delegate = self
        username.delegate = self
        password.delegate = self

    }
    


    //MARK: sign-up & login func
    private func signUp() {
        inputUserName.placeholder = "Username"
        inputUserName.textAlignment = .left
        inputUserName.textColor = UIColor.black

        inputPassword.placeholder = "Password"
        inputPassword.textAlignment = .left
        inputPassword.textColor = UIColor.black
    }
    
    private func logIn() {
        username.placeholder = "Username"
        username.textAlignment = .left
        username.textColor = UIColor.black
        
        password.placeholder = "Password"
        password.textAlignment = .left
        password.textColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === self.inputUserName {
            self.inputPassword.becomeFirstResponder()
        } else if textField === self.inputPassword {
            self.inputUserName.resignFirstResponder()
            self.username.becomeFirstResponder()
        } else if textField === self.password {
            self.username.resignFirstResponder()
        }
        return true
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.source?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postCell = tableView.dequeueReusableCell(withIdentifier: "TableView", for: indexPath) as! TableViewCell
        let postData = self.source?[indexPath.row]
        postCell.configure(with: postData!)
        return postCell
    }
}

extension ViewController: UITableViewDelegate {
    
}

































