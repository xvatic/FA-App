//
//  APIManager.swift
//  FA App
//
//  Created by Евгений on 9/13/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation
import Alamofire

enum APIErrors : Error {
    case custom(message : String)
}

typealias Handler = (Swift.Result<Any?, APIErrors>)-> Void

class APIManager : ObservableObject{
    static let shareInstance = APIManager()

    
    func callingRegisterAPI(register:RegisterModel, completionHandler: Handler) {
        
        AF.request(register_url, method: .post, parameters: register, encoder: JSONParameterEncoder.default).response { response in
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
    
    func  callingLoginAPI(login: LoginModel, completionHandler: Handler) {
        AF.request(login_url, method: .post, parameters: login, encoder: JSONParameterEncoder.default).response { response in
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
