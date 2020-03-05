//
//  DetailAdvMonday.swift
//  myApp
//
//  Created by talgat on 2/25/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailAdvMonday: UIViewController {
    
    @IBOutlet weak var imageAdvMonday: UIImageView!
    
    @IBOutlet weak var titleLabelAdvMonday: UILabel!
    
    var exerciseTitleAdvMonday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageAdvMonday.image = UIImage(named: exerciseTitleAdvMonday)
        titleLabelAdvMonday.text = exerciseTitleAdvMonday
        titleLabelAdvMonday.numberOfLines = 0
    }
}
