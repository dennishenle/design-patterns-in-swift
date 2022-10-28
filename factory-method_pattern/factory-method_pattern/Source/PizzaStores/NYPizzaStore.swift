//
//  NYPizzaStore.swift
//  factory-method_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

struct NYPizzaStore: PizzaStore {
    
    // This is the actually factoryMethod for all NYStylePizzas
    func createPizza(type: PizzaType) -> Pizza {
        switch type {
        case .cheese:
            return NYStyleCheesePizza()
        case .pepperoni:
            return NYStylePepperoniPizza()
        case .clam:
            return NYStyleClamPizza()
        case .veggie:
            return NYStyleVeggiePizza()
        }
    }
}

struct NYStyleCheesePizza: Pizza {
    let name: String = "NY styled cheese pizza"
    let dough: String = "dough for thin and crispy base"
    let sauce: String = "marinara souce"
    let toppings: [String] = [
        "grated reggiano"
    ]
    
    init() {}
}

struct NYStylePepperoniPizza: Pizza {
    let name: String = "NY styled peperoni pizza"
    let dough: String = "dough for thin and crispy base"
    let sauce: String = "marinara souce"
    let toppings: [String] = [
        "grated reggiano",
        "pepperoni"
    ]
    
    init() {}
}

struct NYStyleClamPizza: Pizza {
    let name: String = "NY styled clam pizza"
    let dough: String = "dough for thin and crispy base"
    let sauce: String = "marinara souce"
    let toppings: [String] = [
        "grated reggiano",
        "clam",
        "champignions"
    ]
    
    init() {}
}

struct NYStyleVeggiePizza: Pizza {
    let name: String = "NY styled veggie pizza"
    let dough: String = "dough for thin and crispy base"
    let sauce: String = "marinara souce"
    let toppings: [String] = [
        "grated reggiano",
        "broccoli",
        "champignions",
        "zucchini"
    ]
    
    init() {}
}
