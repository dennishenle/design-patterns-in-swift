//
//  main.swift
//  Singleton
//
//  Created by Dennis Henle on 05.11.22.
//
//  Copyright © 2022 Dennis Henle. All right reserved.
//

import Foundation

let singleton = Singleton.instance
singleton.printSomething()

let singletonActor = SingletonActor.instance
await singletonActor.printSomething()

// Thread unsafe
class Singleton {
    static let instance: Singleton = Singleton()
    
    private init() {}
    
    func printSomething() {
        print("something from Singleton")
    }
}

// Thread safe <- Try to use that when you have multithreaded code
actor SingletonActor {
    static let instance: SingletonActor = SingletonActor()
    
    private init() {}
    
    func printSomething() {
        print("something from SingletonActor")
    }
}
