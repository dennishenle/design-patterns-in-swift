//
//  NYPizzaIngredientFactory.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//
//  Copyright © 2022 Dennis Henle. All right reserved.
//

import Foundation

struct NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThinCrustDough()
    }
    
    func createSauce() -> Sauce {
        return MarinaraSauce()
    }
    
    func createCheese() -> Cheese {
        return ReggianoCheese()
    }
    
    func createVeggies() -> [Vegetable] {
        return [Broccoli(), Zucchini()]
    }
    
    func createClam() -> Clams {
        return FreshClams()
    }
}

struct ThinCrustDough: Dough {}
struct MarinaraSauce: Sauce {}
struct ReggianoCheese: Cheese {}
struct FreshClams: Clams {}
struct Broccoli: Vegetable {}
struct Zucchini: Vegetable {}
