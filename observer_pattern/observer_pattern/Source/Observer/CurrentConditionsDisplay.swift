//
//  CurrentConditionsDisplay.swift
//  observer_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

class CurrentConditionsDisplay {
    private var temperatur: Double?
    private var humidity: Double?
    private var weatherData: WeatherData
    
    init(weatherData: WeatherData) {
        self.weatherData = weatherData
        self.weatherData.registerObserver(self)
    }
}

extension CurrentConditionsDisplay: Observer {
    func update(
        temp: Double?,
        humidity: Double?,
        pressure: Double?
    ) {
        self.temperatur = temp
        self.humidity = humidity
        self.display()
    }
}

extension CurrentConditionsDisplay: DisplayElement {
    func display() {
        let tempString: String = self.temperatur != nil ?
            "\(self.temperatur!)°C" :
            ""
        let humidityString: String = self.humidity != nil ?
            "\(self.humidity!)% humidity" :
            ""
        let stringToPrint = """
            Current conditions:
                Temperatur: \(tempString)
                Humidity: \(humidityString)
            
            """
       print(stringToPrint)
    }
}
