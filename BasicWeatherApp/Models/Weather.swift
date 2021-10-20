//
//  Weather.swift
//  BasicWeatherApp
//
//  Created by David Malicke on 10/19/21.
//

import Foundation


struct WeatherResponse: Decodable {
    
    let main: Weather
    let wind: Wind
}

struct Weather: Decodable {
    
    var temp: Double?
    var humidity: Double?
    var temp_min: Double?
    var temp_max: Double?
    
}

struct Wind: Decodable {
    
    var speed: Double?
    var deg: Double?
    var gust: Double?
    
}
