//
//  main.swift
//  Strategy_Pattern
//
//  Created by Dennis Henle on 01.10.22.
//

let mallardDuck = MallardDuck()
mallardDuck.performFly()
mallardDuck.performQuack()

printSeperator()

let babyDuck = Duckling()
babyDuck.performFly()
babyDuck.performQuack()

printSeperator()

let modelDuck = ModelDuck()
modelDuck.performFly()
modelDuck.performQuack()

printSeperator()

modelDuck.setFlyBehavior(FlyRocketPowered())
modelDuck.performFly()

printSeperator()

func printSeperator() {
    print("--------------------------------------")
}
