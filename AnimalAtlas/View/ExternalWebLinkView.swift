//
//  ExternalWebLinkView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal : Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.com/org")!)
                }
                .foregroundColor(.accent)
            }
        }
    }
}

#Preview {
    ExternalWebLinkView(animal: Animal(id: "1", name: "Lion", headline: "sample sample sample", description: "sample smapsdg sd g sd  s fas fas fas fas fas f asfa sfas ff ", link: "https://en.wikipedia.org/wiki/Lion", image: "lion", gallery: ["lion-1", "lion-2"], fact: [
        "Female lions raise the cubs and are also the primary hunters.",
        "Lions are the only cats that live in groups. A pride, can be up to 30 lions, depending on how much food and water is available.",
        "Without their coats, lion and tiger bodies are so similar that only experts can tell them apart."
      ]))
}
