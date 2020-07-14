//
//  DataInteraction.swift
//  FA App
//
//  Created by Евгений on 7/13/20.
//  Copyright © 2020 Евгений. All rights reserved.
//

import Foundation

var articles: [Article] = []

func loadTopRatedArticles() {
    let url = URL(string: "http://newsapi.org/v2/everything?q=bitcoin&from=2020-06-14&sortBy=publishedAt&apiKey=b0579ddfdda747a2833a48fde23b2087")
    let session = URLSession(configuration: .default)
    let dowloadTask = session.downloadTask(with: url!) { (urlFile, responce, error) in
        if urlFile != nil {
            let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data.json"
            let urlPath = URL(fileURLWithPath: path)
            try? FileManager.default.copyItem(at: urlFile!, to: urlPath)
            print(urlPath)
            
            parseTopRatedArticles()
            
            print(articles.count)
        }
    }
    
    dowloadTask.resume()
    
}

func parseTopRatedArticles() {
    let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data.json"
    let urlPath = URL(fileURLWithPath: path)
    
    let data = try? Data(contentsOf: urlPath)
    let rootDictionary = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! Dictionary<String, Any>
    let array = rootDictionary!["articles"] as! [Dictionary<String, Any>]
    var returnArray: [Article] = []
    
    for dict in array {
        let newArticle = Article(dictionary: dict)
        returnArray.append(newArticle)
    }
    articles = returnArray
    
}
