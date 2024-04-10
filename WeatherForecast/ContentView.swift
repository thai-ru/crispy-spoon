//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Robinson Thairu on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                DayForecast(
                    Day: "Sun",
                    highTemp: 80,
                    lowTemp: 42,
                    isRainy: true
                )
                DayForecast(
                    Day: "Mon",
                    highTemp: 70,
                    lowTemp: 50,
                    isRainy: false
                )
                
                DayForecast(
                    Day: "Tue",
                    highTemp: 68,
                    lowTemp: 42,
                    isRainy: true
                )
            }
            
            HStack {
                DayForecast(
                    Day: "Wed",
                    highTemp: 35,
                    lowTemp: 18,
                    isRainy: true
                )
                DayForecast(
                    Day: "Thur",
                    highTemp: 52,
                    lowTemp: 22,
                    isRainy: true
                )
                DayForecast(
                    Day: "Fri",
                    highTemp: 27,
                    lowTemp: 10,
                    isRainy: true
                )
            }
            DayForecast(
                Day: "Sat",
                highTemp: 35,
                lowTemp: 22,
                isRainy: true
            )
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let Day: String
    let highTemp: Int
    let lowTemp: Int
    let isRainy: Bool
    
    var iconName: String {
        if (highTemp > 69){
            "sun.max.fill"
        } else if (highTemp > 49) {
            "cloud.sun.fill"
        } else if (highTemp > 34) {
            "cloud.fill"
        } else {
            "cloud.rain.fill"
        }
    }
    var iconColor: Color {
        if (highTemp > 69){
            Color.yellow
        } else if (highTemp > 49) {
            Color.yellow
        } else if (highTemp > 34) {
            Color.gray
        } else {
            Color.cyan
        }
    }
    
    
    var body: some View {
        VStack {
            Text(Day)
                .font(.title2)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.title)
            Text("High: \(highTemp)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text("Low: \(lowTemp)")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
