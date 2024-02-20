//
//  GalleryView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var selectedeAnimal = "lion"
    @State var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State var gridColumns: Double = 3.0
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()),
                           count: Int(gridColumns))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 30, content: {
                Image(selectedeAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white, lineWidth: 5))
                
                Slider(value: $gridColumns, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumns) { oldValue, newValue in
                        gridSwitch()
                    }
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, content: {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white, lineWidth: 2))
                            .onTapGesture {
                                selectedeAnimal = item.image
                            }
                    }
                })
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            })
            .padding(.vertical, 50)
            .padding(.horizontal, 10)
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
