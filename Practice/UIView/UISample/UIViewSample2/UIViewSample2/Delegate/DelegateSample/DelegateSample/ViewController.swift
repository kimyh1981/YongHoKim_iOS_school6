//
//  ViewController.swift
//  DelegateSample
//
//  Created by KimYong Ho on 2018. 2. 6..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit


class ViewController: UIViewController, MyCustomViewDelegate, UIScrollViewDelegate {
    
    var myCustomView: MyCustomView!
    var myCustomView1: MyCustomView!
    var sc: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sc = UIScrollView()
        sc.frame = view.bounds
        sc.contentSize = CGSize.init(width: sc.frame.size.width * 2, height: sc.frame.size.height)
        view.addSubview(sc)
        
        myCustomView = MyCustomView.init(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        myCustomView.delegate = self
        myCustomView.backgroundColor = UIColor.red
        sc.addSubview(myCustomView)
        
        myCustomView1 = MyCustomView.init(frame: CGRect(x: view.frame.size.width + 100, y: 100, width: 100, height: 100))
        myCustomView1.delegate = self
        myCustomView1.backgroundColor = UIColor.blue
        sc.addSubview(myCustomView1)
        
        
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        sc.setContentOffset(CGPoint(x: sc.frame.size.width, y: 0), animated: true)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.x, "/////", scrollView.contentOffset.y)
    }
    
    func didSelectedMycustomView(_ customView: MyCustomView) {
        print("You choose this item.")
        myCustomView.backgroundColor = UIColor.blue
    
    }

}

