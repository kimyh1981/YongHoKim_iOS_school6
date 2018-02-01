//
//  ViewController.swift
//  UIViewPractice
//
//  Created by KimYong Ho on 2018. 1. 29..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var viewList: [UIView] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let rect:CGRect = CGRect(x: 100, y: 100, width: 150, height: 100)
//
//        let UIVIEWW: UIView = UIView(frame: CGRect(x: 100, y: 100, width: 150, height: 100))
//
//
//        let subView:UIView = UIView(frame:CGRect(x: 0.0, y: 0.0, width: view.bounds.size.width, height: view.bounds.size.height/2))
//        let color:UIColor = UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 1)
// 변수를 생성하나 할당하나 그게 그거?
//        subView.backgroundColor = UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 1)
//        subView.backgroundColor = UIColor.red
//        self.view.addSubview(subView)
//        위아래 사각형 만들기
//        let rect:CGRect = CGRect(x: 15, y: 15, width: 345, height: 100)
//        let subView:UIView = UIView(frame: CGRect(x: 15, y: 15, width: 345, height: 100))
//        subView.backgroundColor = UIColor.blue
//        self.view.addSubview(subView)
//
//        let rect1:CGRect = CGRect(x: 15, y: 15, width: 345, height: 100)
//        let subView1:UIView = UIView(frame: CGRect(x: 15, y: 15, width: 345, height: 100))
//        subView1.backgroundColor = UIColor.blue
//        self.view.addSubview(subView1)
//

        
//
//
//        let subView:UIView = UIView(frame: CGRect(x: 15, y: 15, width: view.bounds.size.width-30, height: view.bounds.size.height-30))
//        subView.backgroundColor = UIColor.blue
//        self.view.addSubview(subView)
//
//
//        let subView1:UIView = UIView(frame: CGRect(x: 15, y: 15, width: subView.bounds.size.width-30, height: subView.bounds.size.height-30))
//        subView1.backgroundColor = UIColor.red
//        subView.addSubview(subView1)
//
        
//        let subView2:UIView = UIView(frame: CGRect(x: 15, y: 15, width: subView1.bounds.size.width-30, height: subView1.bounds.size.height-30))
//        subView2.backgroundColor = UIColor.green
//        subView1.addSubview(subView2)
//
        
        //뷰리스트 만들기
        viewList = makeViewList(num: 9)
        //프레임 변경
        updateFrameForCollection(for: viewList, colum: 3)
        //섭뷰 추가
        addSubview(list: viewList)
        
    }
    
    
// UIView가 어디서 온것인지? 화면에 보여지기 위해서 어떻게 해야 하는지? 왜 addSubView를 하는지? frame은 어떻게 형성 되는지? 좌표의 이용 등
    
    
    
    
    func updateFrameForCollection(for list: [UIView], colum: Int){
        for index in 0..<list.count{
            let col = index % colum
            let row = index / colum
            
            let width: CGFloat = (self.view.bounds.size.width - 20) / CGFloat(colum)
            
            list[index].frame = CGRect(x: 10 + CGFloat(col) * width, y: 150 + CGFloat(row) * width, width: width, height: width)
        }
    }
    
    func makeViewList(num: Int) -> [UIView] {
        var viewList: [UIView] = []
        for number in 0..<num {
            var v = UIView()
            v.backgroundColor = getColor(inputNum: number)
            v.tag = number
            viewList.append(v)
        }
        return viewList
    }
    
    func updateFrame(for list: [UIView]) {
        for index in 0..<list.count {
            let margin: CGFloat = 15
            if index == 0 {
                list[index].frame = CGRect(x: margin, y: margin, width: view.frame.size.width - margin * 2, height: view.frame.size.height - margin * 2)
            } else {
                let superViewFrame = list[index - 1].frame
                list[index].frame = CGRect(x: margin, y: margin, width: superViewFrame.size.width - margin * 2, height: superViewFrame.size.height - margin * 2)
            }
        }
    }
    
    func getColor(inputNum: Int) -> UIColor {
        switch inputNum % 3 {
        case 0:
            return UIColor.red
        case 1:
            return UIColor.green
        case 2:
            return UIColor.orange
        default:
            return UIColor.white
        }
    }
    
    func addSubview(list:[UIView]) {
        for index in 0..<list.count {
            if index == 0 {
                view.addSubview(list[index])
            } else {
                list[index-1].addSubview(list[index])
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


