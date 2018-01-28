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
        //초 = 0, 중 = 1, 고 = 2, 대 = 3
        let kevin: Student = Student(name: "kevin", gender: "male", schoolGrade : 3, blood : "B")
        let dic0: Dictionary<String, Int> = ["Korean": 80, "Math": 100, "Tech": 50, "Art": 90, "Battle": 90]
        kevin.setSubjects(subjectDic: dic0)
        
        let john: Student = Student(name: "john", gender: "male", schoolGrade: 2, blood: "O")
        let dic1: Dictionary<String, Int> = ["Korean": 60, "Math": 90, "Tech": 50, "Art": 80, "Battle": 70]
        john.setSubjects(subjectDic: dic1)
        
        let ashely: Student = Student(name: "ashely", gender: "female", schoolGrade: 2, blood: "AB")
        let dic2: Dictionary<String, Int> = ["Korean": 30, "Math": 50, "Tech": 50, "Art": 70, "Battle": 100]
        ashely.setSubjects(subjectDic: dic2)
        
        let martin: Student = Student(name: "martin", gender: "male", schoolGrade: 1, blood: "A")
        let dic3: Dictionary<String, Int> = ["Korean": 100, "Math": 90, "Tech": 80, "Art": 100, "Battle": 30]
        martin.setSubjects(subjectDic: dic3)
        
        
        let cal:Calculator = Calculator()
        cal.average(student: john)
        cal.average(student: ashely)
        
        cal.jjang(kevin, john, ashely, martin)
        cal.geniusHighSchool(stu1: john, stu2: martin)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

