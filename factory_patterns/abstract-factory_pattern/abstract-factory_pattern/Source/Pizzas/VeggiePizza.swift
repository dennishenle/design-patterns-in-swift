//
//  VeggiePizza.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//
//  Copyright © 2022 Dennis Henle. All right reserved.
//

import Foundation

struct VeggiePizza: Pizza {
    
    let ingredientFactory: PizzaIngredientFactory
    var name: String = "VeggiePizza"
    var dough: Dough?
    var sauce: Sauce?
    var cheese: Cheese?
    var ingredients: [Ingerient]?

    init(ingredientFactory: PizzaIngredientFactory) {
        self.ingredientFactory = ingredientFactory
        self.prepare()
    }
    
    mutating func prepare() {
        print("Preparation for: \(self.name)")
        self.dough = self.ingredientFactory.createDough()
        self.sauce = self.ingredientFactory.createSauce()
        self.cheese = self.ingredientFactory.createCheese()
        self.ingredients = self.ingredientFactory.createVeggies()
    }
}
