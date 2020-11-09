//
//  Card.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class Card: Codable {
    var name: String
    var powerLevel: Int
    var description: String
    var strength: String
    var weakness: String

    init(name: String, powerLevel: Int, description: String, strength: String, weakness: String) {
        self.name = name
        self.powerLevel = powerLevel
        self.description = description
        self.strength = strength
        self.weakness = weakness
    }
}
