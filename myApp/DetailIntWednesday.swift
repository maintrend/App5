//
//  DetailIntWednesday.swift
//  myApp
//
//  Created by talgat on 2/25/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailIntWednesday: UIViewController {
        
    @IBOutlet weak var imageIntWednesday: UIImageView!
    
    @IBOutlet weak var titleLabelIntWednesday: UILabel!
    
    var exerciseTitleIntWednesday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageIntWednesday.image = UIImage(named: exerciseTitleIntWednesday)
        titleLabelIntWednesday.text = exerciseTitleIntWednesday
        titleLabelIntWednesday.numberOfLines = 0
    }
}
