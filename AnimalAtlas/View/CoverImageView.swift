//
//  CoverImageView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct CoverImageView: View {
    //    MARK: Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //    MARK: Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

//  MARK: Preview
#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
