//
//  WelcomeViewController.swift
//  MeMe
//
//  Created by Parabsimran Litt on 12/8/15.
//  Copyright © 2015 Parabsimran Litt. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome to the Meme Creator!"
    }
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
}
