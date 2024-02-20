//
//  CreditsView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        HStack {
            Image("launch-screen-image")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, content: {
                Text("""
                     Developed by
                     Abhyuday Nandikonda
                     SwiftUI rocks 👨🏻‍💻
                     """)
                .font(.footnote)
                .opacity(0.4)

            })
            .padding(.horizontal, 10)
        }
        .frame(height: 100)
    }
}

#Preview {
    CreditsView()
}
