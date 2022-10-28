//
//  LemonDecorator.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

struct LemonDecorator: CocktailDecorator {
    var beverage: Cocktail
    var extraCost: Double = 0.43
    var description: String = "Added a quartered lemon"
}
