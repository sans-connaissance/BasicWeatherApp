//
//  ContentView.swift
//  BasicWeatherApp
//
//  Created by David Malicke on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM = WeatherViewModel()
    
    //    init() {
    //        self.weatherVM = WeatherViewModel()
    //    }
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter city name", text: $weatherVM.cityName, onCommit:{
                weatherVM.search()})
            Spacer()
            Text("Temp: " + weatherVM.temperature)
            Text("Humidity: " + weatherVM.humidity)
            Text("Max Temp: " + weatherVM.maxTemp)
            Text("Min Temp: " + weatherVM.minTemp)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
