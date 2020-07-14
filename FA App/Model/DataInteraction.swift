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
    let url = URL(string: "http://newsapi.org/v2/everything?q=bitcoin&from=2020-06-14&sortBy=publishedAt&apiKey=API_KEY")
    let session = URLSession(configuration: .default)
    let dowloadTask = session.downloadTask(with: url!) { (urlFile, responce, error) in
        if urlFile != nil {
            let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data.json"
            let urlPath = URL(fileURLWithPath: path)
            try? FileManager.default.copyItem(at: urlFile!, to: urlPath)
            print(urlPath)
        }
    }
    
    dowloadTask.resume()
    
}
