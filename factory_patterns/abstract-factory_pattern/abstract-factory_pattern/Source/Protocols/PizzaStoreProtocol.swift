//
//  PizzaStoreProtocol.swift
//  abstract-factory_pattern
//
//  Created by Dennis Henle on 05.11.22.
//

import Foundation

protocol PizzaStore {
    func createPizza(type: PizzaType) -> Pizza
}
