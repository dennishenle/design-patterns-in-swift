//
//  main.swift
//  observer_pattern
//
//  Created by Dennis Henle on 28.10.22.
//

import Foundation

let weatherData = WeatherData()
let conditionsDisplay = CurrentConditionsDisplay(
    weatherData: weatherData
)
let pressureDisplay = PressureDisplay(
    weatherData: weatherData
)

weatherData.setMeasurements(temperature: 21.4)
weatherData.setMeasurements(humidity: 87)
weatherData.setMeasurements(pressure: 1012)
weatherData.setMeasurements(temperature: 22.3, humidity: 89, pressure: 1011)
