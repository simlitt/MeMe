//
//  MemeDetailViewController.swift
//  MeMe
//
//  Created by Parabsimran Litt on 12/9/15.
//  Copyright © 2015 Parabsimran Litt. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    
    @IBOutlet weak var fullSizeMeme: UIImageView!
    
    var passedMeme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        fullSizeMeme.image = passedMeme.memedImage
    }

    
}
