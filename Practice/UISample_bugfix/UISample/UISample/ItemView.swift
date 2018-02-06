//
//  ItemView.swift
//  UISample
//
//  Created by youngmin joo on 2018. 2. 2..
//  Copyright © 2018년 youngmin joo. All rights reserved.
//

import UIKit

class ItemView: UIView {

    private var backgroundImage:UIImageView?
    private var titleLable:UILabel?
    private var descriptionLabel:UILabel?
    private var actionBtn:UIButton?
    var delgate:ItemViewDelegate
    
    var index:Int = 0
    {
        didSet{
            actionBtn?.tag = index
        }
    }
    
    var image: UIImage?
    {
        get{
            return backgroundImage?.image
        }
        set{
            backgroundImage?.image = newValue
        }
    }

    var title: String?
    {
        get{
            return titleLable?.text
        }
        set{
            titleLable?.text = newValue
        }
    }

    var descriptionText: String?
    {
        get{
            return descriptionLabel?.text
        }
        set{
            descriptionLabel?.text = newValue
        }
    }
    
        
    
    //MARK : - Init Method
    /// 초기화
    /// width / height중 큰 크기로 정사각형 만듬
    /// - Parameter frame: 위치와 크기 받기
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    var name: String = "이름없음"
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.name = name
        }
        createView()
        updateLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK : - Private Method
    
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents)
    {
        actionBtn?.addTarget(target, action: action, for: controlEvents)
    }
    
    //MARK : - Private Method
    private func createView()
    {
        backgroundImage = UIImageView()
        self.addSubview(backgroundImage!)
        
        titleLable = UILabel()
        titleLable!.font = UIFont.systemFont(ofSize: 22)
        titleLable!.textColor = UIColor.white
        titleLable!.text = self.name
        titleLable!.textAlignment = .center
        self.addSubview(titleLable!)
        
        descriptionLabel = UILabel()
        descriptionLabel!.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel!.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        descriptionLabel!.textAlignment = .right
        self.addSubview(descriptionLabel!)
        
        actionBtn = UIButton(type: .custom)
        self.addSubview(actionBtn!)
        
    }
@objc func btnAction(_ sender: UIButton) {
    delegate?.didSelected
    
    private func updateLayout()
    {
        backgroundImage?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
//        backgroundImage?.frame = self.bounds
        titleLable?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height*2/3)
        descriptionLabel?.frame = CGRect(x: 0, y: self.frame.size.height*2/3, width: self.frame.size.width, height: self.frame.size.height/3)
        
        actionBtn?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
//        actionBtn?.frame = self.bounds
    }
}

protocol ItemViewDelegate {
    func itemName() -> String
    @objc optional func didSelectedItem(_ item: ItemView)
}




