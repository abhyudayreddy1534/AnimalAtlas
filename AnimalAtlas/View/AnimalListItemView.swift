//
//  AnimalListItemView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal : Animal
    
    var body: some View {
        
        HStack(alignment: .center,spacing: 16, content: {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading, spacing: 8, content: {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                
            })
        })
    }
}

#Preview {

    AnimalListItemView(animal: Animal(id: "1", name: "lion", headline: "", description: "", link: "", image: "", gallery: [], fact: []))
}
