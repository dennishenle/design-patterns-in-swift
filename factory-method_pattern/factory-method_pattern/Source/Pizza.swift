//
//  Pizza.swift
//  factory-method_pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

protocol Pizza {
    var name: String { get }
    var dough: String { get }
    var sauce: String { get }
    var toppings: [String] { get }
    func prepare()
    func bake()
    func cut()
    func box()
}

// Default implementation
extension Pizza {
    func prepare() {
        print("Prepare for: \(self.name)")
        print("Make dough for the pizza...")
        print("Add some souce...")
        print("Add ingredients: ")
        for ingredient in toppings {
            print("\t\(ingredient)")
        }
    }
    
    func bake() {
        print("Bake for 10 minutes with 350 degrees celsius.")
    }
    
    func cut() {
        print("Cut pizza in diagonal slices.")
    }
    
    func box() {
        print("Put pizza in an official PizzaStoreBox.")
    }
}
