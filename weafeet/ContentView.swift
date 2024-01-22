//
//  ContentView.swift
//  weafeet
//
//  Created by Jessie on 2022/1/1.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        TabView{
            weatherview()
                .tabItem {
                    Image(systemName: "thermometer")
                    Text("Weather")
                }
            map()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Map")
                }
            todo()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("To Do")
                }
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
