//
//  MuteQuack.swift
//  Strategy_Pattern
//
//  Created by Dennis Henle on 01.10.22.
//

struct MuteQuack: QuackBehavior {
    func quack() {
        print("<< silence >>")
    }
}
