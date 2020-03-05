//
//  Model.swift
//  myApp
//
//  Created by talgat on 2/26/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import Foundation
var articles: [Article] {
    
     let data = try? Data(contentsOf: urlToData)
        if data == nil {
            return []
        }
        
        let rootDictionaryAny = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
    //        as! Dictionary<String, Any>
        if rootDictionaryAny == nil {
            return []
        }
        let rootDictionary = rootDictionaryAny as? Dictionary<String, Any>
        if rootDictionary == nil {
            return []
        }
        if let array = rootDictionary!["articles"] as? [Dictionary<String, Any>] {
            var returnArray: [Article] = []
               for dict in array {
                   let newArticle = Article(dictionary: dict)
                   returnArray.append(newArticle)
               }
               return returnArray
        }
    return []
}

var urlToData: URL {
    let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data4.json"
    let urlPath = URL(fileURLWithPath: path)
    return urlPath
}
func loadNews(completionHandler: (() -> Void)?) {
    let url = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=sports&apiKey=5148efea71564ee5b129fa1ea8d75cb5")
    let session = URLSession(configuration: .default)
    let downloadTask = session.downloadTask(with: url!) { (urlFile, responce, error) in
        if urlFile != nil {
                        
            try? FileManager.default.copyItem(at: urlFile!, to: urlToData)
          
            completionHandler?()
        }
    }
    downloadTask.resume()
}
