//
//  ViewControllerIntLevel.swift
//  myApp
//
//  Created by talgat on 3/3/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class ViewControllerIntLevel: UIViewController {

    @IBOutlet weak var mondayIntLevelButton: UIButton!
    
    @IBOutlet weak var wedIntLevelButton: UIButton!
    
    @IBOutlet weak var fridayIntLevelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mondayIntLevelButton.backgroundColor = .darkGray
        mondayIntLevelButton.layer.cornerRadius = 15
               
        wedIntLevelButton.backgroundColor = .darkGray
        wedIntLevelButton.layer.cornerRadius = 15
               
        fridayIntLevelButton.backgroundColor = .darkGray
        fridayIntLevelButton.layer.cornerRadius = 15
        
    }
}
