//
//  BeverageDecorator.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

/*
 Everything that implements CocktailDecorator is a Cocktail as well
 */

protocol CocktailDecorator: Cocktail {
    var beverage: Cocktail { get set }
    var extraCost: Double { get }
}

extension CocktailDecorator {
    func getDescription() -> String {
        return beverage.getDescription() + " + " + self.description
    }
    
    func cost() -> Double {
        return self.beverage.cost() + self.extraCost
    }
}
