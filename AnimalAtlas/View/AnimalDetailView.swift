//
//  AnimalDetailView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.vertical,showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 20, content: {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                        .frame(height: 6)
                        .offset(y:24))
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accent)
                    .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled",
                                headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                    
                Group {
                    HeadingView(headingImage: "questionmark.circle",
                                headingText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "info.circle",
                                headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "map",
                                headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "books.vertical",
                                headingText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            })
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        })
    }
}

#Preview {
//    let animals: [Animal] = Bundle.main.decode("animals.json")

    AnimalDetailView(animal: Animal(id: "1", name: "Lion", headline: "sample sample sample", description: "sample smapsdg sd g sd  s fas fas fas fas fas f asfa sfas ff ", link: "abc.", image: "lion", gallery: ["lion-1", "lion-2"], fact: [
        "Female lions raise the cubs and are also the primary hunters.",
        "Lions are the only cats that live in groups. A pride, can be up to 30 lions, depending on how much food and water is available.",
        "Without their coats, lion and tiger bodies are so similar that only experts can tell them apart."
      ]))
}
