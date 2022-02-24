//
//  MapView.swift
//  VStack
//
//  Created by sarim khan on 10/02/2022.
//

import SwiftUI
import MapKit


//24.913989521663208, 67.0958218151301

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.913989521663208, longitude: 67.0958218151301), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
       Map(coordinateRegion: $region)
            .ignoresSafeArea()
    }
}







struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
