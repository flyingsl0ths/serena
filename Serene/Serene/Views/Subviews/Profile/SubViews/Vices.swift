//
//  Vices.swift
//  Serena
//
//  Created by Gabriel Celis on 12/17/24.
//

import SwiftUI

struct Vices: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        topLeading: 10, topTrailing: 10)
                )
                .frame(height: 40)
                .foregroundStyle(.red)

                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        bottomLeading: 10, bottomTrailing: 10))
            }.zIndex(0)
                .frame(width: 120, height: 190)

            VStack(spacing: 0) {
                Text("Vices")
                    .foregroundStyle(.white)
                    .font(.system(size: 28))
                    .offset(y: -8)

                ForEach(0...2, id: \.self) { _ in
                    HStack(spacing: 18) {
                        Image(systemName: "shippingbox.fill")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)

                        Text("Foo")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                    }
                    .padding(10)
                }

            }
            .zIndex(1)
        }
    }
}

#Preview {
    Vices()
}
