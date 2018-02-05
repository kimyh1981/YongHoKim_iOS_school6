//
//  MainList.swift
//  LifeCycle
//
//  Created by KimYong Ho on 2018. 2. 5..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class MainList: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
    
    var bgView: UIImageView!
    var titleLb: UILabel!
    var textField1: UITextField!
    var textField2: UITextField!
    var resultLb: UILabel!
    var btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBG()
        
        textField1 = UITextField(frame: CGRect(x: 20, y: 130, width: 280, height: 50))
        textField1.borderStyle = UITextBorderStyle.line
        textField1.placeholder = " " + "Write your name here."
        textField1.textColor = .blue
        textField1.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        textField1.alpha = 0.8
        textField1.delegate = self
        textField1.tag = 1
        textField1.becomeFirstResponder()
        textField1.addTarget(self, action: #selector(textChagned(_:)), for: .editingChanged)
        view.addSubview(textField1)
        
        textField2 = UITextField(frame: CGRect(x: 20, y: 190, width: 280, height: 50))
        textField2.borderStyle = UITextBorderStyle.line
        textField2.placeholder = " " + "Write your age here."
        textField2.textColor = .blue
        textField2.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        textField2.alpha = 0.8
        textField2.delegate = self
        textField2.tag = 2
        view.addSubview(textField2)
        
        
        resultLb = UILabel(frame: CGRect(x: 20, y: 250, width: 280, height: 50))
        resultLb.textAlignment = .left
        resultLb.textColor = .red
        resultLb.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        resultLb.alpha = 0.8
        resultLb.layer.borderWidth = 1
        view.addSubview(resultLb)
        
        //action
        btn = UIButton()
        btn.frame = CGRect(x: 20, y: 310, width: 280, height: 50)
        btn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btn.alpha = 0.5
        btn.setTitle("Press", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        btn.layer.borderWidth = 1
        btn.addTarget(self, action: #selector(self.btnHandler(_:)), for: .touchUpInside)
        view.addSubview(btn)
    

    }
    @objc func textChagned(_ textField1: UITextField) {
        print(textField1.text)
    }
    
    @objc func btnHandler(_ sender: UIButton) {
        guard let str1 = textField1.text else { return }
        guard let str2 = textField2.text else { return }
        
        resultLb!.text = " " + str1 + " " + "&" + " " + str2

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            textField2.becomeFirstResponder()
        } else if textField.tag == 2{
            textField2.resignFirstResponder()
        }
        return true
    }
    
    func createBG() {
        bgView = UIImageView(frame: view.bounds)
        bgView.image = UIImage(named: "myImg.jpeg")
        bgView.contentMode = .scaleToFill
        bgView.alpha = 1
        view.addSubview(bgView)
        
        titleLb = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 150))
        titleLb.text = "UI Practice"
        titleLb.textColor = .blue
        titleLb.font = UIFont.systemFont(ofSize: 40)
        titleLb.textAlignment = NSTextAlignment.center
        view.addSubview(titleLb)
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
