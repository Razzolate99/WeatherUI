    //
    //  ContentView.swift
    //  YTApp
    //
    //  Created by Aaron Ward on 2021-07-28.
    //

    import SwiftUI

    struct ContentView: View {
       @ObservedObject var weatherService = WeatherService.shared
        var body: some View {
            VStack{
                HStack{
                    Spacer()
                    Text("Weather Forecast")
                        .fontWeight(.medium)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                    Spacer()
                    Button(action: {}) {
                        Image("menu-icon")
         
                    }
                }
                
                
                    	
                
                HourlyForecastView(hourlyForecast:weatherService.json.hourly)
                
                DailyForecastView(dailyForecast: weatherService.json.daily)
            }
            .onAppear(perform: {
                weatherService.fetchCity()
                    
                
            })
                .padding()
           
            }
          
          
            
        }
    

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }



