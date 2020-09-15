//
//  APIManager.swift
//  FA App
//
//  Created by Евгений on 9/13/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation
import Alamofire

class APIManager : ObservableObject{
    static let shareInstance = APIManager()
    @Published var searchResult:[Recipe] = []
    
    func callingRegisterAPI(register:RegisterModel) {
        let headers: HTTPHeaders = [
        .contentType("application/json")
        ]
        AF.request(register_url, method: .post, parameters: register, encoder: JSONParameterEncoder.default, headers: headers).response { response in
            debugPrint(response)
            switch response.result {
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                }catch{
                    print(error.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
            
        }
        
    }
    
    
    
    
}
