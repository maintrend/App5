//
//  ViewControllerAdvLevel.swift
//  myApp
//
//  Created by talgat on 3/3/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class ViewControllerAdvLevel: UIViewController {
    
    @IBOutlet weak var mondayAdvLevelButton: UIButton!
    
    @IBOutlet weak var wedAdvLevelButton: UIButton!
    
    @IBOutlet weak var fridayAdvLevelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mondayAdvLevelButton.backgroundColor = .darkGray
        mondayAdvLevelButton.layer.cornerRadius = 15
        
        wedAdvLevelButton.backgroundColor = .darkGray
        wedAdvLevelButton.layer.cornerRadius = 15
        
        fridayAdvLevelButton.backgroundColor = .darkGray
        fridayAdvLevelButton.layer.cornerRadius = 15
    }
}
