//
//  ViewController.swift
//  GesturePractice
//
//  Created by KimYong Ho on 2018. 3. 6..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var datePickerView: UIDatePicker!
    
    @IBOutlet weak var tf: UITextField!
    
    
    let list1 = ["A", "B", "C", "D", "E", "F"]
    let list2 = ["a", "b", "c", "d", "e", "f"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return list1.count
        } else {
            return list2.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return list1[row]
        } else {
            return list2[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(component, row)
    }
    

    @IBOutlet weak var TabCountLb: UILabel!
    @IBOutlet weak var tapLocation: UILabel!
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBOutlet var picker: UIPickerView!
    
    @IBAction func taptap(_ sender: UITapGestureRecognizer) {
        guard let gestureView = sender.view else { return }
        let location = sender.location(in: gestureView)
        self.tapLocation.text = "x : \(Int(location.x)) , y : \(Int(location.y))"
        //        var tapCount: { get }
        //        self.TabCountLb.text = tapCount
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker = UIPickerView()
        picker.delegate = self
        picker.delegate = self
        tf.inputView = picker
        
    }
    
    
    
//    @IBAction open func location(in view: UIView?) -> CGPoint {
//        return
//    }
//
//    open var numberOfTouches: Int = 0 { get }
    


}

