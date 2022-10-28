//
//  Duck.swift
//  Strategy_Pattern
//
//  Created by Dennis Henle on 01.10.22.
//

// Andere Klassen werden von Duck erben und sich selbst Flug- bzw. Quackverhalten geben.
class Duck {
    
    private var flyBehavior: FlyBehavior  // Flugstrategie wird in extra Klasse ausgelagert
    private var quackBehavior: QuackBehavior // Quackstrategie wird in extra Klasse ausgelagert

    init(flyBehavior: FlyBehavior, quackBehavior: QuackBehavior) {
        self.flyBehavior = flyBehavior
        self.quackBehavior = quackBehavior
    }

    func performFly() {
        flyBehavior.fly()
    }

    func performQuack() {
        quackBehavior.quack()
    }

    func setFlyBehavior(_ behavior: FlyBehavior) {
        flyBehavior = behavior
    }

    func setQuackBehavior(_ behavior: QuackBehavior) {
        quackBehavior = behavior
    }

    func walk() {
        print("i'm walking")
    }

    func swim() {
        print("i'm swimming")
    }
}
