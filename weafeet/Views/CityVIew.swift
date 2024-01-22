//
//  CityVIew.swift
//  weafeet
//
//  Created by Jessie on 2022/1/2.
//

import SwiftUI

struct CityVIew: View {
    
    @ObservedObject var cityVM: CityViewModel
    
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
            
        }.padding(.bottom, 30)
    }
}

struct CityVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
