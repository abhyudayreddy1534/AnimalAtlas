//
//  ContentView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")

        NavigationView(content: {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
                
            }
            .navigationTitle("Animal Atlas")
            .navigationBarTitleDisplayMode(.large)
        })
    }
}

#Preview {
    ContentView()
}
