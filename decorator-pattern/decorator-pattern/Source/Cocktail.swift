//
//  Beverage.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

protocol Cocktail {
    var description: String { get }
    func getDescription() -> String
    func cost() -> Double
}
