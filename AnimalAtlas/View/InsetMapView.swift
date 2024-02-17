//
//  InsetMapView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan.init(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing, content: {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.white
                        .opacity(0.4)
                        .clipShape(RoundedRectangle(cornerRadius: 8)))
                }
                .padding(12)
            })
            .frame(height: 260)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    InsetMapView()
}
