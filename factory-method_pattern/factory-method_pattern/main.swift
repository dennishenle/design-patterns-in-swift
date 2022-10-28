//
//  main.swift
//  factory-method_pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

let nyPizzaStore: PizzaStore = NYPizzaStore()
let chicagoPizzaStore: PizzaStore = ChicagoPizzaStore()

nyPizzaStore.orderPizza(type: .cheese)
chicagoPizzaStore.orderPizza(type: .veggie)
