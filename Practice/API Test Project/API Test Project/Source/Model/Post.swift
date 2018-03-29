//
//  Post.swift
//  API Test Project
//
//  Created by KimYong Ho on 28/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import Foundation

struct Post: Codable {
    let author: User
    let title: String
    let content: String
    let imageString: String?
    
    enum CodingKeys: String, CodingKey {
        case author
        case title
        case content
        case imageString = "img_cover"
    }
}
