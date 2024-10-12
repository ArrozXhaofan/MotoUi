//
//  EvenView.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 15/10/24.
//

import SwiftUI
import MapKit

struct EvenView: View {
    
    @State private var region2 = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    )
    
    var body: some View {
        
        
        VStack {
            
            Map(position: $region2)
        }
    }
}

#Preview {
    EvenView()
}
