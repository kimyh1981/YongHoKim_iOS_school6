//
//  ViewController.swift
//  Class&StructurePractice
//
//  Created by KimYong Ho on 2018. 1. 22..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cal = Calculator()

    override func viewDidLoad() {
        //다른 함수들을 호출하거나(Class A), 메소들을 호출(Run "A")하거나, 인스턴스 생성(a = A())
        super.viewDidLoad()
        
        let mazingaZ = Person(name: "마징가Z", gender: "남성", major: "초딩")
        let dic = ["국어":80, "산수":100, "슬기로운생활":50, "기술":90, "싸움":99]
        mazingaZ.setSubjects(subjectDic: dic)

        let atom = Person(name: "아톰", gender: "남성", major: "고딩")
        let dic1 = ["국어":70, "산수":90, "슬기로운생활":70, "기술":80, "싸움":70]
        atom.setSubjects(subjectDic: dic1)
  
        let pocketmon = Person(name: "포켓몬", gender: "남성", major: "고딩")
        let dic2 = ["국어":90, "산수":55, "슬기로운생활":60, "기술":70, "싸움":40]
        pocketmon.setSubjects(subjectDic: dic2)
        
        let cal:Calculator = Calculator()
        cal.average(student: mazingaZ)
        cal.average(student: atom)
        
        cal.jjang(mazingaZ, atom, pocketmon)
        
        cal.geniusHighSchool(stu1: atom, stu2: pocketmon)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

