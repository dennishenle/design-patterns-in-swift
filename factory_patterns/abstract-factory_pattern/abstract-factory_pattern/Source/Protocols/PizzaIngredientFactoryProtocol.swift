//
//  PizzaIngredientFactoryProtocol.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//

import Foundation

protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Vegetable]
    func createClam() -> Clams
}
