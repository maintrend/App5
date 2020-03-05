//
//  DetailIntMonday.swift
//  myApp
//
//  Created by talgat on 2/25/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailIntMonday: UIViewController {
    
    @IBOutlet weak var imageIntMonday: UIImageView!
    
    @IBOutlet weak var titleLabelIntMonday: UILabel!
    
    var exerciseTitleIntMonday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageIntMonday.image = UIImage(named: exerciseTitleIntMonday)
        titleLabelIntMonday.text = exerciseTitleIntMonday
        titleLabelIntMonday.numberOfLines = 0
    }
}
