//
//  ViewController.swift
//  MyCollectionPractice
//
//  Created by KimYong Ho on 2018. 3. 5..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var yearLb: UILabel!
    @IBOutlet weak var monthLb: UILabel!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 1 {
            return 7
        } else if section == 2 {
            return 31
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.backgroundColor = UIColor.blue
        cell.CellLabel.text = "\(indexPath.row)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 55, height: 55)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header: UICollectionReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
//        header.backgroundColor = .red
//        return header
//    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        labelMaking()
        
    }

    
    func labelMaking() {
        var monthLabel: UILabel = monthLb
        monthLb.text = "3월"
        monthLb.textAlignment = .center
        monthLb.frame = CGRect(x: (self.view.frame.size.width/2) - 40, y: self.view.frame.size.height/5, width: 80, height: 20)

        var yearLabel: UILabel = yearLb
        yearLb.text = "2018년"
        yearLb.textAlignment = .center
        yearLb.frame = CGRect(x: (self.view.frame.size.width/2) - 40, y: (self.view.frame.size.height/5) - 20, width: 80, height: 20)
    }


}

