//
//  Card.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class Card {
    var name: String
    var image: UIImage
    var powerLevel: Int
    var description: String
    var rarity: Int
    var strengths: String
    var weaknesses: String

    init(name: String, image: UIImage, powerLevel: Int, description: String, rarity: Int, strengths: String, weaknesses: String) {
        self.name = name
        self.image = image
        self.powerLevel = powerLevel
        self.description = description
        self.rarity = rarity
        self.strengths = strengths
        self.weaknesses = weaknesses
    }
}
