//
//  Tormentors.swift
//  Serena
//
//  Created by Gabriel Celis on 12/17/24.
//

import SwiftUI

struct Tormentors: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        topLeading: 10, topTrailing: 10)
                )
                .frame(height: 40)
                .foregroundStyle(.accent)

                UnevenRoundedRectangle(
                    cornerRadii: .init(
                        bottomLeading: 10, bottomTrailing: 10)
                )
            }
            .foregroundStyle(.red)
            .frame(height: 160)

            Text("Tormentors")
                .foregroundStyle(.white)
                .strikethrough()
                .font(.system(size: 16))
                .frame(
                    maxWidth: .infinity,
                    alignment: .center
                )
                .offset(y: -60)
                .zIndex(1)

            VStack(spacing: 18) {
                HStack(spacing: 0) {
                    HStack(spacing: 18) {
                        Image(systemName: "diamond.fill")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)

                        Text("Foo")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                    }
                    .containerRelativeFrame(
                        .horizontal, count: 2, span: 1, spacing: 50,
                        alignment: .leading)

                    HStack(spacing: 18) {
                        Image(systemName: "diamond.fill")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)

                        Text("Foo")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                    }
                }

                HStack(spacing: 0) {
                    HStack(spacing: 18) {
                        Image(systemName: "diamond.fill")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)

                        Text("Foo")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                    }
                    .containerRelativeFrame(
                        .horizontal, count: 2, span: 1, spacing: 50,
                        alignment: .leading)

                    HStack(spacing: 18) {
                        Image(systemName: "diamond.fill")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)

                        Text("Foo")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                    }

                }
            }
            .offset(y: 10)
            .zIndex(1)
        }
    }
}

#Preview {
    Tormentors()
}
