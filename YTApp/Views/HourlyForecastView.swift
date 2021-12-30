//
//  HourlyForecastView.swift
//  YTApp
//
//  Created by Aaron Ward on 2021-07-28.
//

import SwiftUI

struct HourlyForecastView: View {
    let hourlyForecast: [Hourly]
    var body: some View {
        ScrollView(.horizontal){
            
            HStack(spacing:12){
                ForEach(Array(hourlyForecast.enumerated()), id:
                            \.offset) {offset, forecast in
                    VStack(spacing: 25){
                        Text(offset == 0 ? "Now" : forecast.formattedDate)
                            .fontWeight(.heavy)
                            .font(.system(size: 17))
                            
                        Image(systemName: forecast.iconName)
                        Text(forecast.formattedTemp)
                    }
                    
                    .frame(width: 99, height: 163)
                    .background(offset == 0 ? Color.yellow : Color.white)
                        .modifier(CardModifier())
                    }
                
                
            }.padding([.top, .bottom])
            
            }
        				
    
        
    }
}
      			
struct HourlyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HourlyForecastView(hourlyForecast:
                                WeatherService.shared.json.hourly)
        }
    }
}
