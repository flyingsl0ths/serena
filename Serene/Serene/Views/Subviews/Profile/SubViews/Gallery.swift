//
//  Gallery.swift
//  Serena
//
//  Created by Gabriel Celis on 12/17/24.
//

import SwiftUI

struct Gallery: View {
    var body: some View {
        ScrollView([.horizontal]) {
            HStack(spacing: 30) {
                ForEach(0...2, id: \.self) { _ in
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 78, height: 78)
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.65)
                }
            }
            .padding(18)
        }
        .scrollIndicators(.hidden)
        .background(
            RoundedRectangle(cornerRadius: 10).fill(.gray).zIndex(0)
                .opacity(0.25)
        )
    }
}

#Preview {
    Gallery()
}
