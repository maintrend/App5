//
//  ViewController.swift
//  myApp
//
//  Created by talgat on 2/18/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trainingProgramButton: UIButton!
    
    @IBOutlet weak var mediaButton: UIButton!
   
    @IBOutlet weak var newsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        trainingProgramButton.setTitleColor(.blue, for: .normal)
        trainingProgramButton.backgroundColor = .darkGray
        trainingProgramButton.layer.cornerRadius = 15
        
//        mediaButton.setTitleColor(.blue, for: .normal)
        mediaButton.backgroundColor = .darkGray
        mediaButton.layer.cornerRadius = 15
        
//        newsButton.setTitleColor(.blue, for: .normal)
        newsButton.backgroundColor = .darkGray
        newsButton.layer.cornerRadius = 15
    }

}

