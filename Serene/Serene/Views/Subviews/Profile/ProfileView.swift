//
//  ProfileView.swift
//  Serena
//
//  Created by Gabriel Celis on 9/17/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 40) {
            Spacer()

            Stats()

            ScrollView([.vertical]) {
                VStack(spacing: 28) {
                    Text("Some Guy")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Text("Painter")
                            .opacity(0.75)

                        Spacer()

                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fill)
                    }

                    Gallery()

                    Lexemes()

                    HStack {
                        Vices()

                        WTLB()
                    }

                    Tormentors()
                }
                .padding(32)
            }
            .background(
                RoundedRectangle(cornerRadius: 20).fill(.white).padding(
                    .vertical, -10
                )
                .shadow(radius: 10, y: -20)
            )

        }
    }
}

#Preview {
    ProfileView()
}
