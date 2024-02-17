//
//  HeadingView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct HeadingView: View {
    var headingImage: String
    var headingText: String
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accent)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled",
                headingText: "Wilderness in Pictures")
}
