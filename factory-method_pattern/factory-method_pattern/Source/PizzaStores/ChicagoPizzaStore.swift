//
//  ChicagoPizzaStore.swift
//  factory-method_pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

struct ChicagoPizzaStore: PizzaStore {
    func createPizza(type: PizzaType) -> Pizza {
        switch type {
        case .cheese:
            return ChicagoStyleCheesePizza()
        case .pepperoni:
            return ChicagoStylePepperoniPizza()
        case .clam:
            return ChicagoStyleClamPizza()
        case .veggie:
            return ChicagoStyleVeggiePizza()
        }
    }
}

struct ChicagoStyleCheesePizza: Pizza {
    let name: String = "Chicago styled cheese pizza"
    let dough: String = "dough for extra thick base"
    let sauce: String = "tomato-basilica souce"
    let toppings: [String] = [
        "much morzarella"
    ]
    
    init() {}
    
    func cut() {
        print("Cut pizza in square pieces")
    }
}

struct ChicagoStylePepperoniPizza: Pizza {
    let name: String = "Chicago styled peperoni pizza"
    let dough: String = "dough for extra thick base"
    let sauce: String = "tomato-basilica souce"
    let toppings: [String] = [
        "much morzarella",
        "pepperoni"
    ]
    
    init() {}
    
    func cut() {
        print("Cut pizza in square pieces")
    }
}

struct ChicagoStyleClamPizza: Pizza {
    let name: String = "Chicago styled clam pizza"
    let dough: String = "dough for extra thick base"
    let sauce: String = "tomato-basilica souce"
    let toppings: [String] = [
        "much morzarella",
        "clam",
        "champignions"
    ]
    
    init() {}
    
    func cut() {
        print("Cut pizza in square pieces")
    }
}

struct ChicagoStyleVeggiePizza: Pizza {
    let name: String = "Chicago styled veggie pizza"
    let dough: String = "dough for extra thick base"
    let sauce: String = "tomato-basilica souce"
    let toppings: [String] = [
        "much morzarella",
        "broccoli",
        "champignions",
        "zucchini"
    ]
    
    init() {}
    
    func cut() {
        print("Cut pizza in square pieces")
    }
}
