//
//  map.swift
//  weafeet
//
//  Created by Jessie on 2022/1/10.
//

import SwiftUI
import MapKit

struct map: View {
    
    @ObservedObject var locationManager = LocationManager()
    @State private var search: String = ""
//    @State private var landmarks: [Landmark] = [Landmark]()
//    @State private var tapped: Bool = false
    
//    private func getNearByLandmarks() {
//        let request = MKLocalSearch.Request()
//        request.naturalLanguageQuery = search
//
//        let search =  MKLocalSearch(request: request)
//        search.start { (response, error) in
//            if let response = response {
//                let mapItems = response.mapItems
//                self.landmarks = mapItems.map {
//                    Landmark(placemark: $0.placemark)
//                }
//
//            }
//        }
//    }
    
//    func calculateOffset() -> CGFloat {
//        if self.landmarks.count > 0 && !self.tapped {
//            return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 4
//        }
//        else if self.tapped {
//            return 100
//        }
//        else {
//            return UIScreen.main.bounds.size.height
//        }
//    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            MapView()
            
            TextField("Search", text: $search, onEditingChanged: { _ in})
            {
//                self.getNearByLandmarks()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .offset(y:44)
            
//            PlaceListView(landmarks: self.landmarks) {
//                self.tapped.toggle()
//            }.animation(.spring())
//                .offset(y: 50)
        }
    }
}

struct map_Previews: PreviewProvider {
    static var previews: some View {
        map()
    }
}
