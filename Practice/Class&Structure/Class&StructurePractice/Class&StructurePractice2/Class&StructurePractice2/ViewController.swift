//
//  ViewController.swift
//  Class&StructurePractice2
//
//  Created by KimYong Ho on 2018. 1. 23..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cal = Calculator()

    override func viewDidLoad() {
    //다른 함수들을 호출하거나(class A), Method를 호출(Run)하거나, Instance 생성(a = A())
        super.viewDidLoad()
        
        let mazingaZ = Person(name: "마징가Z", gender: "남성", major: "초딩")
        let dic = ["국어":80, "산수":100, "슬기로운감빵생활":50, "기술":90, "싸움":90]
            mazingaZ.setSubjects(subjectDic: dic)
        
        let atom = Person(name: "아톰Z", gender: "남성", major: "고딩")
        let dic1 = ["국어":70, "산수":90, "슬기로운감빵생활":100, "기술":70, "싸움":100]
            atom.setSubjects(subjectDic: dic1)

        let pocketmon = Person(name: "포켓몬", gender: "남성", major: "고딩")
        let dic2 = ["국어":40, "산수":80, "슬기로운감빵생활":80, "기술":90, "싸움":80]
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

