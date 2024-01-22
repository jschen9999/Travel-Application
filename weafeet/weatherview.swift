//
//  weatherview.swift
//  weafeet
//
//  Created by Jessie on 2022/1/9.
//

import SwiftUI

struct weatherview: View {
    @ObservedObject var cityVM = CityViewModel()
    var body: some View {
        
        ZStack(alignment: .bottom){
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                ScrollView(showsIndicators: false) {
                    CityVIew(cityVM: cityVM)
                }
            }.padding(.top, 30)
        }.background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.gray,Color.cyan]), startPoint: .topLeading, endPoint: .bottomTrailing)))
            .edgesIgnoringSafeArea(.all)
    }
}

struct weatherview_Previews: PreviewProvider {
    static var previews: some View {
        weatherview()
    }
}
