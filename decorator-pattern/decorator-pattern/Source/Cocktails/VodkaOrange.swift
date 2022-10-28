//
//  VodkaOrange.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

struct VodkaOrange: Cocktail {
    let description: String = "Vodka with orange juice"
    
    func getDescription() -> String {
        self.description
    }
    
    func cost() -> Double {
        5.99
    }
}
