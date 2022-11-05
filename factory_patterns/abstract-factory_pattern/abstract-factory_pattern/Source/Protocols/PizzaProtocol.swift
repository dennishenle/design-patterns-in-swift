//
//  PizzaProtocol.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//

import Foundation

protocol Pizza {
    var ingredientFactory: PizzaIngredientFactory { get }
    var name: String { get set }
    var dough: Dough? { get }
    var sauce: Sauce? { get }
    var cheese: Cheese? { get }
    var ingredients: [Ingerient]? { get set }
    mutating func prepare()
    func bake()
    func cut()
    func box()
    func toString()
}

extension Pizza {
    func bake() {
        print("Bake for 25 Minutes at 350 degrees")
    }
    
    func cut() {
        print("Cut pizza in diagonal slices")
    }
    
    func box() {
        print("Put pizza in an official box")
    }
    
    func toString() {
        self.bake()
        self.cut()
        self.box()
    }
}
