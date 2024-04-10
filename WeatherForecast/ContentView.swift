//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Robinson Thairu on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
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
            
            DayForecast(
                Day: "Wed",
                highTemp: 54,
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
        if isRainy == true {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            Color.cyan
        } else {
            Color.yellow
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
