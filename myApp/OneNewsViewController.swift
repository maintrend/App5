//
//  OneNewsViewController.swift
//  myApp
//
//  Created by talgat on 2/26/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit
import  SafariServices

class OneNewsViewController: UIViewController {
    
    var index: Int = 0
    var article: Article!
        
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var openSafariButton: UIButton!
    
    @IBAction func pushOpenAction(_ sender: Any) {
        if let url = URL(string: article.url) {
        let svc = SFSafariViewController(url: url)
        present(svc, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openSafariButton.backgroundColor = .darkGray
        openSafariButton.layer.cornerRadius = 15

        labelTitle.text = article.title
        labelDescription.text = article.description
        
        DispatchQueue.main.async {
            if let url = URL(string: self.article.urlToImage) {
                if let data = try?  Data(contentsOf: url) {
                    self.imageView.image = UIImage(data: data)
                       }
                     
                   }
        }
        if URL(string: article.url) == nil {
            
        }
    }
}

