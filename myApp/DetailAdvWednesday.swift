//
//  DetailAdvWednesday.swift
//  myApp
//
//  Created by talgat on 2/25/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailAdvWednesday: UIViewController {
        
    @IBOutlet weak var imageAdvWednesday: UIImageView!
    
    @IBOutlet weak var titleLabelAdvWednesday: UILabel!
    
    var exerciseTitleAdvWednesday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageAdvWednesday.image = UIImage(named: exerciseTitleAdvWednesday)
        titleLabelAdvWednesday.text = exerciseTitleAdvWednesday
        titleLabelAdvWednesday.numberOfLines = 0
    }    
}
