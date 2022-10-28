//
//  WeatherData.swift
//  observer_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

class WeatherData: SubjectProtocol {
    private var observers: [any Observer] = []
    private var temperatur: Double?
    private var humidity: Double?
    private var pressure: Double?
    
    func registerObserver(_ observer: any Observer) {
        self.observers.append(observer)
    }
    
    func removeObserver(_ observer: any Observer) {
        self.observers.removeAll(where: { $0 === observer })
    }
    
    func notifyObservers() {
        for observer in self.observers {
            observer.update(
                temp: self.temperatur,
                humidity: self.humidity,
                pressure: self.pressure
            )
        }
    }

    func measurementsChanged() {
        self.notifyObservers()
    }
    
    func setMeasurements(
        temperature: Double? = nil,
        humidity: Double? = nil,
        pressure: Double? = nil
    ) {
        self.temperatur = temperature ?? self.temperatur
        self.humidity = humidity ?? self.humidity
        self.pressure = pressure ?? self.pressure
        self.measurementsChanged()
    }
}
