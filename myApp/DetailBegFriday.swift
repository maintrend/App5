//
//  DetailBegFriday.swift
//  myApp
//
//  Created by talgat on 2/22/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class DetailBegFriday: UIViewController {
    
    @IBOutlet weak var imageBegFriday: UIImageView!
    
    @IBOutlet weak var titleLabelBegFriday: UILabel!
    
    var exerciseTitleBegFriday = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageBegFriday.image = UIImage(named: exerciseTitleBegFriday)
        titleLabelBegFriday.text = exerciseTitleBegFriday
        titleLabelBegFriday.numberOfLines = 0
    }
}
