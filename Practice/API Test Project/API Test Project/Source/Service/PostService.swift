//
//  PostService.swift
//  API Test Project
//
//  Created by KimYong Ho on 28/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import Foundation
import Alamofire

struct PostService {
    static func post(completionHandler: @escaping ([Post]) -> Void) {
        
        Alamofire
            .request("https://api.lhy.kr/posts", method: .get)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    // Data -> [Post]
                    do {
                        let result = try JSONDecoder().decode([Post].self, from: data)
                        completionHandler(result)
                    } catch {
                        print(error)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
                
        }
    }
}
