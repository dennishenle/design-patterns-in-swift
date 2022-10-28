//
//  Observer.swift
//  observer_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

protocol Observer: AnyObject {
    func update(
        temp: Double?,
        humidity: Double?,
        pressure: Double?
    )
}
