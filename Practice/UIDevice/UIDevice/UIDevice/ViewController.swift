//
//  ViewController.swift
//  UIDevice
//
//  Created by KimYong Ho on 26/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//
/*
UIDevie
 - 디바이스 이름 / 모델 / 화면 방향 등
 - OS 이름 / 버전
 - 인터페이스 형식 (phone, pad, tv 등)
 - 베터리 정보
 - 근접 센서 정보
 - 멀티태스킹 지원 여부
*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    let device = UIDevice.current
    
    @IBAction private func systemVersion() {
/*Version: Major, Minor (public), Minor (non-public)*/
        print("\n---------- [ System Version ] ----------\n")
        print("System Name: :", device.systemName)
        print((device.systemVersion as NSString).floatValue)
        
        let systemVersion = device.systemVersion
        print(systemVersion)
        
        let splitVersion = systemVersion.split(separator: ".").flatMap { Int($0) }
        print(splitVersion)
        
        if splitVersion.count > 2 {
            label.text = "\(splitVersion[0]).\(splitVersion[1]).\(splitVersion[2])"
        } else {
            label.text = "\(splitVersion[0]).\(splitVersion[1])"
        }
    }
    @IBAction private func architecture() {
        print("\n---------- [ Architecture ] ----------\n")
        #if (arch(i386) || arch(x86_64)) && os(iOS)
            print("Simulator")
            label.text = "Simulator"
        #else
            print("Device")
            label.text = "Device"
        #endif
        //1 1 0 1 1 1 1 0 0 0 Simulator
        //1 1 0 0 0 1 1 0 0 1 Device: iPhoneX
        print("TARGET_OS_MAC : ", TARGET_OS_MAC)
        print("TARGET_OS_IOS : ", TARGET_OS_IOS)
        
    
    }
    
    @IBAction private func deviceMpode() {
        print("\n---------- [ Device Model ] ----------\n")
        print("name :", device.name)
        print("model :", device.name)
        print("localizedModel :", device.localizedModel)
        print("orientation :", device.orientation)
        print("isMultitaskingSupported :", device.isMultitaskingSupported) // 최신 기기에서는 항상 true
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



}

