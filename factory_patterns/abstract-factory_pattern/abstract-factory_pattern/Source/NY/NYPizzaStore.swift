//
//  NYPizzaStore.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//
//  Copyright © 2022 Dennis Henle. All right reserved.
//

import Foundation

struct NYPizzaStore: PizzaStore {
    
    // This is the actually factoryMethod for all NYStylePizzas
    func createPizza(type: PizzaType) -> Pizza {
        let ingretientFactory = NYPizzaIngredientFactory()
        switch type {
        case .cheese:
            return CheesePizza(ingredientFactory: ingretientFactory)
        case .veggie:
            return VeggiePizza(ingredientFactory: ingretientFactory)
        }
    }
}
