//
//  DetailAdvFriday.swift
//  myApp
//
//  Created by talgat on 2/25/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailAdvFriday: UIViewController {
        
    @IBOutlet weak var imageAdvFriday: UIImageView!
    
    @IBOutlet weak var titleLabelAdvFriday: UILabel!
    
    var exerciseTitleAdvFriday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageAdvFriday.image = UIImage(named: exerciseTitleAdvFriday)
        titleLabelAdvFriday.text = exerciseTitleAdvFriday
        titleLabelAdvFriday.numberOfLines = 0
    }
}
