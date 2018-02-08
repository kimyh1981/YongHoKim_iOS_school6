//
//  ViewController.swift
//  OverrideFuncText
//
//  Created by KimYong Ho on 2018. 2. 8..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//
//ViewController 호출 방식

//1)스턴스 생성
//let nextVC = NextViewController()
//nextVC.view.backgroundcolor = UIColor.white

//2)xib 생성 방식
//let nextVC = NexViewController(nibName: "NextViewController", bundle: nil)

//3)스토리보드 생성 방식
//let storyboard = UIStoryboard(name: "Main", bundle: nill)
//let nextVC:NextViewController = stroryboard.instantiateViewController(withidentifier: "NextViewController") as! NextViewController



import UIKit

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveToNextVC(_ sender: UIButton) {
        let nextVC1 = NextViewController1()
        self.present(nextVC1, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubiews")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidDisapper")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

