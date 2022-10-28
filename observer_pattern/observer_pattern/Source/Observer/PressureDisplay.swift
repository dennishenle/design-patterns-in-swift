//
//  PressureDisplay.swift
//  observer_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

class PressureDisplay {
    private var pressure: Double?
    private var weatherData: WeatherData
    
    init(weatherData: WeatherData) {
        self.weatherData = weatherData
        self.weatherData.registerObserver(self)
    }
}

extension PressureDisplay: Observer {
    func update(temp: Double?, humidity: Double?, pressure: Double?) {
        if let pressure = pressure {
            self.pressure = pressure
            self.display()
        }
    }
}

extension PressureDisplay: DisplayElement {
    func display() {
        let pressureString: String = self.pressure != nil ?
            "\(self.pressure!)mbar" :
            ""
        let stringToPrint = """
            Current Pressure: \(pressureString)
            
            """
        print(stringToPrint)
    }
}
