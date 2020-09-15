//
//  SearchAPIManager.swift
//  FA App
//
//  Created by Евгений on 9/14/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation
import Alamofire

class  SearchAPIManager: ObservableObject {
    @Published var searchResult: [Recipe] = []
    
    func searchRecipes (search  : SearchModel){
        let parameters = SearchModel(Filters: [SearchModel.Words(Words: ["Вода"])])
        let decoder = JSONDecoder()
        var searchResult:[Recipe] = dummyData
        guard let url = URL(string: "http://localhost:5000/Search/Search") else { return()}
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
        
       return()
    }
    
}
