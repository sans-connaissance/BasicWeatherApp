//
//  Weather.swift
//  BasicWeatherApp
//
//  Created by David Malicke on 10/19/21.
//

import Foundation


struct WeatherResponse: Decodable {
    
    let main: Weather
}

struct Weather: Decodable {
    
    var temp: Double?
    var humidity: Double?
    
    
}
