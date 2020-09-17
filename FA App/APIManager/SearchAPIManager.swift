//
//  SearchAPIManager.swift
//  FA App
//
//  Created by Евгений on 9/14/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation
import Alamofire
import Combine
import SwiftUI

class  SearchAPIManager: ObservableObject {
    var didChange = PassthroughSubject<SearchAPIManager, Never>()
    var searchResult = [Recipe]() {
        didSet {
            didChange.send(self)
        }
    }
    init() {
        let parameters = SearchModel(Filters: [SearchModel.Words(Words: ["Вода"])])
        let decoder = JSONDecoder()
        var searchResult:[Recipe] = dummyData
        guard let url = URL(string: "http://25.41.79.10:80/Search/Search") else {return}
        let request = AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default)
            .responseJSON{
                (responseData)   in
                guard let data = responseData.data else {return}
                do {
                    debugPrint(data)
                    searchResult = try decoder.decode([Recipe].self, from: data)
                } catch {
                    print(error)
                }
        }
        
    }
    
    
    
}
