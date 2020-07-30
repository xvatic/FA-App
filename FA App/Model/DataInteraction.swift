//
//  DataInteraction.swift
//  FA App
//
//  Created by Евгений on 7/13/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation
import Alamofire


var articles: [Article] = []
var urlToData: URL {
    let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data.json"
    let urlPath = URL(fileURLWithPath: path)
    return urlPath
}

func loadTopRatedArticles() {
    let url = URL(string: "http://localhost:5000/Recipes/AllRecipes")
    let session = URLSession(configuration: .default)
    let dowloadTask = session.downloadTask(with: url!) { (urlFile, responce, error) in
        if urlFile != nil {
            
            try? FileManager.default.removeItem(at: urlToData)
            
            try? FileManager.default.copyItem(at: urlFile!, to: urlToData)
            print(urlToData)
            
            
            print(articles.count)
        }
    }
    
    dowloadTask.resume()
    
}

func uploadComment() {
    let parameters = SearchModel(Filters: [SearchModel.Words(Words: ["Вода"])])
    
    
    guard let url = URL(string: "http://localhost:5000/Search/Search") else { return }
    let request = AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default)
        .responseJSON{
        response in
           
            debugPrint(response)
        
    }

                    
}

func parseTopRatedArticles() {
    
    
    let data = try? Data(contentsOf: urlToData)
    if data == nil {
        return
    }
   
    let rootDictionaryAny = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
    if rootDictionaryAny == nil {
        return
    }
    let rootDictionary = rootDictionaryAny as? Dictionary<String, Any>
    if rootDictionary == nil {
        return
    }
    
    if let array = rootDictionary!["articles"] as? [Dictionary<String, Any>] {
        var returnArray: [Article] = []
        
        for dict in array {
            let newArticle = Article(dictionary: dict)
            returnArray.append(newArticle)
        }
        articles = returnArray
    }
    
}
