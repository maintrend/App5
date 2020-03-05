//
//  ViewControllerBegLevel.swift
//  myApp
//
//  Created by talgat on 3/3/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class ViewControllerBegLevel: UIViewController {
    
    @IBOutlet weak var mondayBegLevelButton: UIButton!
    
    @IBOutlet weak var wedBegLevelButton: UIButton!
    
    @IBOutlet weak var fridayBegLevelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mondayBegLevelButton.backgroundColor = .darkGray
        mondayBegLevelButton.layer.cornerRadius = 15
               
        wedBegLevelButton.backgroundColor = .darkGray
        wedBegLevelButton.layer.cornerRadius = 15
               
        fridayBegLevelButton.backgroundColor = .darkGray
        fridayBegLevelButton.layer.cornerRadius = 15
    }
}
