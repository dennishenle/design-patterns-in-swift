//
//  PizzaStoreProtocol.swift
//  factory-method_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

protocol PizzaStore {
    func orderPizza(type: PizzaType)
    
    /// ‼️ Factory method ‼️
    func createPizza(type: PizzaType) -> Pizza
}

// Default implementation
extension PizzaStore {
    func orderPizza(type: PizzaType) {
        print("🍕 NEW ORDER 🍕")
        let pizza = createPizza(type: type)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        print("\n")
    }
}
