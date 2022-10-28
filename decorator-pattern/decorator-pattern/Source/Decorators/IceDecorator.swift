//
//  IceDecorator.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

struct IceDecorator: CocktailDecorator {
    var beverage: Cocktail
    let extraCost: Double = 0.3
    var description: String = "Added some ice"
}
