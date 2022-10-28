//
//  BabyDuck.swift
//  Strategy_Pattern
//
//  Created by Dennis Henle on 01.10.22.
//

class Duckling: Duck {
    init() {
        super.init(
            flyBehavior: FlyNoWay(),
            quackBehavior: SmallQuack()
        )
    }
}
