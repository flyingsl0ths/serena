//
//  WTLB.swift
//  Serena
//
//  Created by Gabriel Celis on 12/17/24.
//

import SwiftUI

struct WTLB: View {
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
                        bottomLeading: 10, bottomTrailing: 10)
                )
            }
            .frame(height: 160)

            Text("Words to live by...")
                .foregroundStyle(.white)
                .font(.system(size: 16))
                .underline()
                .frame(
                    maxWidth: .infinity,
                    alignment: .trailing
                )
                .offset(x: -10, y: -60)
                .zIndex(1)

            VStack(spacing: 18) {
                ScrollView([.horizontal]) {
                    HStack(spacing: 18) {
                        Spacer()
                        ForEach(0...4, id: \.self) { _ in
                            Text("Hello")
                                .font(.title)
                                .foregroundStyle(.white)
                        }
                        Spacer()
                    }
                }
                .scrollIndicators(.hidden)

                ScrollView([.horizontal]) {
                    HStack(spacing: 18) {
                        Spacer()
                        ForEach(0...4, id: \.self) { _ in
                            Text("World!!")
                                .font(.title)
                                .foregroundStyle(.white)
                        }
                        Spacer()
                    }
                }
                .scrollIndicators(.hidden)
            }
            .offset(y: 18)
        }
    }
}

#Preview {
    WTLB()
}
