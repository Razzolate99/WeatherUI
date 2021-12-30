//
//  Currently+Extension.swift
//  YTApp
//
//  Created by Aaron Ward on 2021-07-28.
//

import Foundation
//
//  Current+Extension.swift
//  YTApp
//
//  Created by Aaron Ward on 2021-07-28.
//

import Foundation
import CoreLocation

extension Daily{
    var formattedDate: String{
        let date = Date(timeIntervalSince1970: TimeInterval(dt))
        let df = DateFormatter()
        df.dateFormat = "EEE"
        return Calendar.current.isDateInToday(date) ? "Today" : df.string(from: date)
    }
        var formattedTemp: String{
            "\(Int(temp.min)) / \(Int(temp.max))º"
        }
        var iconName: String{
            let iconName = String(weather.first?.id ?? 200)
            print(iconName)
            return (WeatherService.shared.icons[iconName]?.icon ?? "cloud") + ".fill"
        }
    var formmatedDescriptuon: String{
        "• \(weather.first?.weatherDescription.capitalized ?? "No Description")"
    }
    
    }


extension Hourly{
    var formattedDate: String{
        let date = Date(timeIntervalSince1970: TimeInterval(dt))
        let df = DateFormatter()
        df.dateFormat = "h:mm a"
        return df.string(from: date)
    }
        var formattedTemp: String{
            "\(Int(temp))º"
        }
        var iconName: String{
            let iconName = String(weather.first?.id ?? 200)
            print(iconName)
            return (WeatherService.shared.icons[iconName]?.icon ?? "cloud") + ".fill"
        }
    }



extension  Current{
    var formattedDate: String{
        let date = Date(timeIntervalSince1970: TimeInterval(dt))
        let df = DateFormatter()
        df.dateFormat = "E, d MMM"
        return df.string(from: date)
    }
    
    var formattedTemp: String{
        "\(Int(temp))"
    }
    
    var iconName: String{
        let iconName = String(weather.first?.id ?? 200)
        return (WeatherService.shared.icons[iconName]?.icon ?? "cloud") + ".fill"
    }
  
} 
