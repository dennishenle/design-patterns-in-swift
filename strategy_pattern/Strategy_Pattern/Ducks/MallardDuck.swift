//
//  MallardDuck.swift
//  Strategy_Pattern
//
//  Created by Dennis Henle on 01.10.22.
//

// Die Klass verwendet jetzt Strategien zum Fliegen und zum Quacken
class MallardDuck: Duck {
    init() {
        super.init(
            flyBehavior: FlyWithWings(),
            quackBehavior: Quack()
        )
    }
}
