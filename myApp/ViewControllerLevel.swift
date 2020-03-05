//
//  ViewControllerLevel.swift
//  myApp
//
//  Created by talgat on 3/3/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class ViewControllerLevel: UIViewController {
    
    @IBOutlet weak var advLevelButton: UIButton!
    
    @IBOutlet weak var intLevelButton: UIButton!
    
    @IBOutlet weak var begLevelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        advLevelButton.backgroundColor = .darkGray
        advLevelButton.layer.cornerRadius = 15
        
        intLevelButton.backgroundColor = .darkGray
        intLevelButton.layer.cornerRadius = 15
        
        begLevelButton.backgroundColor = .darkGray
        begLevelButton.layer.cornerRadius = 15
        
    }
}
