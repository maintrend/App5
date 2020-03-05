//
//  DetailBegWednesday.swift
//  myApp
//
//  Created by talgat on 2/21/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailBegWednesday: UIViewController {
    
    @IBOutlet weak var imageBegWednesday: UIImageView!
    @IBOutlet weak var titleLabelBegWednesday: UILabel!
    
    var exerciseTitleBegWednesday = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBegWednesday.image = UIImage(named: exerciseTitleBegWednesday)
        titleLabelBegWednesday.text = exerciseTitleBegWednesday
        titleLabelBegWednesday.numberOfLines = 0
    }

}
