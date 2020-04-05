//
//  ViewController.swift
//  FaceMaskMustHaveIngredientsTableView
//
//  Created by Wisa Terhune on 3/9/20.
//  Copyright © 2020 Wisa Terhune. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        ingredientsLabel.text = ingredients[myIndex]
        descriptionLabel.text = ingredientsDesc[myIndex]
        image.image = UIImage(named: images[myIndex] )
    }


}

