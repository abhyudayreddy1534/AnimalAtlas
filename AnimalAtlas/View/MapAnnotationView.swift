//
//  MapAnnotationView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.accent)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(.accent, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
        
        
    }
}

#Preview {
    MapAnnotationView(location: NationalParkLocation(id: "", name: "Lion", image: "map-chobe", latitude: -18.7305642, longitude: 24.4292148))
}
