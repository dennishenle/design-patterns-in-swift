//
//  CheesePizza.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//
//  Copyright © 2022 Dennis Henle. All right reserved.
//

import Foundation

struct CheesePizza: Pizza {
    
    let ingredientFactory: PizzaIngredientFactory
    var name: String = "CheesePizza"
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
        self.dough = ingredientFactory.createDough()
        self.sauce = ingredientFactory.createSauce()
        self.cheese = ingredientFactory.createCheese()
        self.ingredients = []
    }
}
