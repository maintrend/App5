//
//  DetailBegMonday.swift
//  myApp
//
//  Created by talgat on 2/21/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailBegMonday: UIViewController {

    @IBOutlet weak var imageBegMonday: UIImageView!
    
    @IBOutlet weak var titleLabelBegMonday: UILabel!
    
    var exerciseTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageBegMonday.image = UIImage(named: exerciseTitle)
        titleLabelBegMonday.text = exerciseTitle
        titleLabelBegMonday.numberOfLines = 0
    }
}
