//
//  InsetGalleryView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15, content: {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            })
        }
    }
}

#Preview {
    InsetGalleryView(animal: Animal(id: "1", name: "Lion", headline: "", description: "", link: "", image: "", gallery: ["lion-1", "lion-2", "lion-3"], fact: []))
}
