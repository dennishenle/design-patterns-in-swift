//
//  Subject.swift
//  observer_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

// Observer can observe subjects that implement this
protocol SubjectProtocol {
    func registerObserver(_ observer: any Observer)
    func removeObserver(_ observer: any Observer)
    func notifyObservers()
}
