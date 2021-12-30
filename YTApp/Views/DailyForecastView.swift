//
//  DailyForecastView.swift
//  YTApp
//
//  Created by Aaron Ward on 2021-07-29.
//

import SwiftUI

struct DailyForecastView: View {
    let dailyForecast : [Daily]
    var body: some View {
        
        
        VStack(spacing: 0){
           
                
            ForEach(0..<4, id: \.self){ index in
                
            
            HStack{
                Image(systemName: dailyForecast[index].iconName)
                Text(dailyForecast[index].formattedDate)
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                (Text(dailyForecast[index].formmatedDescriptuon))
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                Spacer()
                Text(dailyForecast[index].formattedTemp)
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            }.padding()
            .padding([.leading, .trailing])
            }
            Button(action: {}, label: {
                Text("Next 7 Days")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding()
            })
            
            
        }
        
            
        }
    }


struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastView(dailyForecast: WeatherService.shared.json.daily)
    }
}


// 		


//https://api.openweathermap.org/data/2.5/onecall?lat={lat}&lon={lon}&exclude={part}&appid={API key}
