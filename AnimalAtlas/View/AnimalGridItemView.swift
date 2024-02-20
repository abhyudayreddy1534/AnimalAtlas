//
//  AnimalGridItemView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    var animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    AnimalGridItemView(animal: Animal(id: "", name: "Lion", headline: "", description: "", link: "", image: "lion", gallery: [], fact: []))
}
