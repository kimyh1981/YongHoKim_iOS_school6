//
//  ViewController.swift
//  Error Handling
//
//  Created by KimYong Ho on 2018. 3. 15..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private let tmpDir = NSTemporaryDirectory()
    private let filePath = NSTemporaryDirectory() + "swift.txt"
    private let errorFilePath = NSTemporaryDirectory() + "noFile.txt"
    
    enum MyError: Error {
        case errorExample
        case errorWithParam(num: Int)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createDummyFile()
//        basic()
//        throwError()
//        throwNSError()
//        throwsFunctionExample()
//        rethrowsFunctionExample()
//        someRethrowsFunction()
//        deferOrder()
        deferExmaple()
    }
    private func createDummyFile() {
        let swift = "Swfit Error Handling"
        try? swift.write(toFile: filePath, atomically: true, encoding: .utf8)
    }
    
    private func basic() {
        print("\n-----------------------[ basic ]-----------------------\n")
        let swift = "Swfit Errpor Handling"
        do {
//            try swift.write(toFile: tmpDir, atomically: true, encoding: .utf8)
            try swift.write(toFile: filePath, atomically: true, encoding: .utf8)
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
    
    private func throwNSError() throws {
        throw NSError(domain: "domain data", code: 55, userInfo: ["something" : 1])
    }
    
    private func throwError() throws {
//        try "1".write(toFile: tmpDir, atomically: true, encoding: .utf8)
        throw MyError.errorWithParam(num: 10)
    }
    
    private func throwsFunctionExample() {
        print("\n------[ throwsFunctionExample ]------\n")
        print("\n------[ NSError ]------\n")
        do {
            try throwNSError()
//            try throwError()
        } catch {
            print("Error: ", error)
            print("Error LocalizedDescription :", error.localizedDescription)
            
            let e = error as NSError
            print("nserror :", e)
            print("domain :", e.domain)
            print("code :", e.code)
            print("userInfo :", e.userInfo)
        }
        print("\n------[ Matching Error ]------\n")
        do {
            try throwError()
        } catch MyError.errorExample {
            print("errorExample")
        } catch MyError.errorWithParam(let num) {
            print("error with number param:", num)
        } catch {
            print("The error is not MyError")
        }
    }
    
//    private func rethrowsFunctionExample() {
//        someRethrowsFunction {}
//        do {
//            try someRethrowsFunction {
//                throw MyError.errorExample
//            }
//        } catch {
//            print(error)
//        }
//    }
//
//    private func someRethrowsFunction(_ fn: () throws - ()) rethrows {
//        try fn()
//    }

    private func deferOrder() {
        print("\n---------[ deferOrder ]-----------\n")
        print("start")
        defer { print("defer1")}
        print("center")
        defer { print("defer2")}
        defer { print("defer3")}
        print("end")
    }
    
    private func deferExmaple() {
        print("\n--------[ deferExample]---------\n")
        defer { print("task1 - Must do something before return")}
        do {
            try throwError()
        } catch {
            print(error)
            return
        }
        print("This is not called when error occurred.")
        defer {
            print("This is not called when eroor occurred.")
        }
    }
}

