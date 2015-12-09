//
//  Meme.swift
//  MeMe
//
//  Created by Parabsimran Litt on 12/8/15.
//  Copyright © 2015 Parabsimran Litt. All rights reserved.
//

import Foundation
import UIKit

class Meme: NSObject {
    
    var topText: String!
    var bottomText: String!
    var image: UIImage!
    var memedImage: UIImage!
    
    init(topText: String, bottomText: String, image: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = memedImage
    }
}