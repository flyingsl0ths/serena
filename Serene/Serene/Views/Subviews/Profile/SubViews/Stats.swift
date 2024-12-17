//
//  Stats.swift
//  Serena
//
//  Created by Gabriel Celis on 12/17/24.
//
import SwiftUI

struct Stats: View {
    var body: some View {
        HStack(spacing: 50) {
            VStack(spacing: 10) {
                Image(systemName: "photo.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32, height: 32)
                    .foregroundStyle(.white)
                    .shadow(radius: 1.5, y: 3)

                Text("N")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 14))
                    .shadow(radius: 1.5, y: 3)
            }

            VStack(spacing: 10) {
                Image(systemName: "eye")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32, height: 32)
                    .foregroundStyle(.white)
                    .shadow(radius: 1.5, y: 3)

                Text("N")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 14))
                    .shadow(radius: 1.5, y: 3)
            }
        }
        .padding(.vertical, 80)
        .frame(maxWidth: .infinity)
        .background {
            AsyncImage(
                url: URL(
                    string:
                        "https://plus.unsplash.com/premium_photo-1673676884450-f9c680abf6ea?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                )
            ) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .opacity(0.65)
                    .cornerRadius(8)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .opacity(0.65)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    Stats()
}
