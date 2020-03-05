//
//  DetailIntFriday.swift
//  myApp
//
//  Created by talgat on 2/25/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailIntFriday: UIViewController {
    
    @IBOutlet weak var imageIntFriday: UIImageView!
    
    @IBOutlet weak var titleLabelIntFriday: UILabel!
    
    var exerciseTitleIntFriday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageIntFriday.image = UIImage(named: exerciseTitleIntFriday)
        titleLabelIntFriday.text = exerciseTitleIntFriday
        titleLabelIntFriday.numberOfLines = 0
    }    
}
