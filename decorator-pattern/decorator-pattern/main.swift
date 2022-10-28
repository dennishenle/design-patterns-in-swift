//
//  main.swift
//  decorator-pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

let ginWithIceAndCucumber = CucumberDecorator(
    beverage: IceDecorator(
        beverage: GinTonic()
    )
)
print("Description: " + ginWithIceAndCucumber.getDescription())
print("Price: " + String(ginWithIceAndCucumber.cost()))

let icedVodkaOrange = GoldLearDecorator(
    beverage: IceDecorator(
        beverage: VodkaOrange()
    )
)
print("Description: " + icedVodkaOrange.getDescription())
print("Price: " + String(icedVodkaOrange.cost()))
