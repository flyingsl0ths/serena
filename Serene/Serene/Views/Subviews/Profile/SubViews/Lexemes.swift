//
//  Lexemes.swift
//  Serena
//
//  Created by Gabriel Celis on 12/17/24.
//

import SwiftUI

struct Lexemes: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        topLeading: 10, topTrailing: 10)
                )
                .foregroundStyle(.red)
                .frame(height: 45)

                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        bottomLeading: 10, bottomTrailing: 10))
            }.zIndex(0)
                .frame(height: 125)
                .offset(y: 10)

            VStack(spacing: 16) {
                Text("LEXEMES")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                    .underline()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(y: -10)

                ScrollView([.horizontal]) {
                    HStack(spacing: 10) {
                        ForEach(0...2, id: \.self) { _ in
                            Text("Foo")
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                                .offset(y: 2.5)
                        }
                    }
                }
                .scrollIndicators(.hidden)
                .padding(.horizontal, 16)
            }
            .zIndex(1)
        }
    }
}

#Preview {
    Lexemes()
}
