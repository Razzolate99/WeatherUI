//
//  CurrentForecastView.swift
//  YTApp
//
//  Created by Aaron Ward on 2021-07-28.
//

import SwiftUI
import CoreLocation
import Combine

struct CurrentForecastView: View {
    let current: Current
    let city: String
    var body: some View {
        VStack  {
            HStack{
                Image(systemName: current.iconName)
                    .foregroundColor(.yellow)
                VStack(alignment: .leading){
                    Text("Today")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                       
                    Text("Wed, 28, July")
                        .fontWeight(.medium)
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                }
            }
            Text(current.formattedTemp)
                .font(.system(size: 80))
                .fontWeight(.light)
                .foregroundColor(.yellow)
                
                
            
            Text("Hamilton,ON")
                .font(.system(size: 16))
                .fontWeight(.medium)
    }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: .init(.sRGB, white: 0, opacity: 0.25), radius: 4, x: 0, y:4)
        
}
struct CurrentForecastView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentForecastView(current: WeatherService.shared.json.current, city: "Hamilton")
    }
}
}
