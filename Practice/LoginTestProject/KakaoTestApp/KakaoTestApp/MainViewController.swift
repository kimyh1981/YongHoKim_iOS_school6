//
//  LoginViewController.swift
//  KakaoTestApp
//
//  Created by KimYong Ho on 29/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    
    @IBOutlet weak var nickNameLable: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBAction private func logoutButtonDidTap(_ sender: Any) {
        KOSession.shared().logoutAndClose { (success, error) -> Void in
            if error != nil {
                //Failed to logout
                return print(error!.localizedDescription)
            }
            // Logout success
        }}

    override func viewDidLoad() {
        super.viewDidLoad()

        KOSessionTask.meTask{ [weak self] (result, error) in
            if error != nil {
            print(error!.localizedDescription)
                return
            }
            let user = result as! KOUser
            print(user)
            
            guard let properties = user.properties,
            let nickName = properties[KOUserNicknamePropertyKey] as? String,
            let profileImageLink = properties[KOUserProfileImagePropertyKey] as? String,
            let thumnailImageLink = properties[KOUserThumbnailImagePropertyKey] as? String
                else { return }
            self?.nickNameLable.text = nickName
            
            let imageLinks = [profileImageLink, thumnailImageLink]
            for link in imageLinks {
                let url = URL(string: link)!
                let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                    if error != nil {
                        return print(error!.localizedDescription)
                    }
                    guard let data = data, let image = UIImage(data: data) else { return }
                    
                    DispatchQueue.main.async {
                        if link == profileImageLink {
                            self?.profileImageView.image = image
                        } else {
                            self?.thumbnailImageView.image = image
                        }
                    }
                })
                task.resume()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
