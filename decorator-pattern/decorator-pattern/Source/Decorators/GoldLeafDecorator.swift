//
//  GoldLeafDecorator.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

struct GoldLearDecorator: CocktailDecorator {
    var beverage: Cocktail
    var extraCost: Double = 1.63
    var description: String = "Added goldLeafs"
}
