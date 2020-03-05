//
//  VideoViewControllerAdd.swift
//  myApp
//
//  Created by talgat on 2/29/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class VideoViewControllerAdd: UIViewController {
    
    var video:Video = Video()
    
    @IBOutlet weak var videoWebView: UIWebView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoTitle.text = video.Title
        getVideo(videoKey: video.Key)
    }
    func getVideo(videoKey:String) {
        
        let url = URL(string: "https://www.youtube.com/embed/\(videoKey)")
        videoWebView.loadRequest(URLRequest(url: url!))
        
    }
}
