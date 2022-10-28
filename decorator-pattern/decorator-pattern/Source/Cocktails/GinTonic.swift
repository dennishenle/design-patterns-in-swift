//
//  GinTonic.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//  Copyright © 2022 sevDesk. All rights reserved.
//

import Foundation

struct GinTonic: Cocktail {
    let description: String = "A nice balanced Gin with Tonic Water"
    
    func getDescription() -> String {
        self.description
    }
    
    func cost() -> Double {
        7.99
    }
}
