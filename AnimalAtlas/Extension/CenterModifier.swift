//
//  CenterModifier.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
