//
//  InsetFactView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 150, idealHeight: 170, maxHeight: 180)
            
        }
    }
}

#Preview {
    InsetFactView(animal: Animal(id: "1", name: "Lion", headline: "sample sample sample", description: "sample smapsdg sd g sd  s fas fas fas fas fas f asfa sfas ff ", link: "abc.", image: "lion", gallery: ["lion-1", "lion-2"], fact: [
        "Female lions raise the cubs and are also the primary hunters.",
        "Lions are the only cats that live in groups. A pride, can be up to 30 lions, depending on how much food and water is available.",
        "Without their coats, lion and tiger bodies are so similar that only experts can tell them apart."
      ]))
}
