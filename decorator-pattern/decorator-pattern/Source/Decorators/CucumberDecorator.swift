//
//  CucumberDecorator.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

struct CucumberDecorator: CocktailDecorator {
    var beverage: Cocktail
    let extraCost: Double = 0.5
    var description: String = "Added a cucumber slice"
}
