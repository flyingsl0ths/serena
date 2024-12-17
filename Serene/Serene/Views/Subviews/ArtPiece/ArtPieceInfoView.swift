//
//  ArtPieceInfoView.swift
//  Serena
//
//  Created by Gabriel Celis on 9/17/24.
//

import SwiftUI

struct ArtPieceInfoView: View {
    var body: some View {
        VStack(spacing: 35) {
            HStack {
                HStack(spacing: 10) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 32.0)

                    Text("Piece Title")
                        .font(.title)
                        .foregroundStyle(.accent)
                }.padding(0)

                Spacer()

                HStack(spacing: 5) {
                    Image(systemName: "eye")
                        .frame(width: 32.0)
                        .foregroundStyle(.text)
                    Text("123")
                        .foregroundStyle(.accent)
                }.padding(0)
            }.padding(EdgeInsets(top: 0.0, leading: 15.0, bottom: 0.0, trailing: 15.0))

            HStack(spacing: 0) {
                HStack(spacing: 6) {
                    Text("Materials")
                        .foregroundStyle(.accent)
                    Image(systemName: "paintbrush.fill")
                        .foregroundStyle(.text)
                }
                .padding(EdgeInsets(top: 10.0, leading: 34.0, bottom: 10.0, trailing: 34.0))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )

                Spacer()

                HStack(spacing: 6) {
                    Text("Comments")
                        .foregroundStyle(.accent)
                    Image(systemName: "message.fill")
                        .foregroundStyle(.text)
                }
                .padding(EdgeInsets(top: 10.0, leading: 34.0, bottom: 10.0, trailing: 34.0))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
            }.padding(EdgeInsets(top: 0.0, leading: 15.0, bottom: 0.0, trailing: 15.0))

            VStack(alignment: .leading, spacing: 30) {
                Text("Artist Name")
                    .fontWeight(.bold)
                Text("""
                Piece description
                Lorem ipsum dolor sit amet, 
                consectetur adipiscing elit. Proin purus enim,
                condimentum a varius vel, imperdiet ut lacus.
                Maecenas quis ipsum nunc. Sed viverra rhoncus velit at rutrum. 
                Donec eget laoreet mi. Nam volutpat, arcu non maximus euismod, 
                neque felis iaculis orci, a porttitor justo felis viverra erat. Maecenas 
                dapibus scelerisque dignissim. Pellentesque in consectetur sem. 
                Maecenas tincidunt justo ac fringilla efficitur.

                """)
                .italic()
                .padding(EdgeInsets(top: 0.0, leading: 25.0, bottom: 0.0, trailing: 0.0))
            }
            .foregroundStyle(.text)
            .padding(EdgeInsets(top: 0.0, leading: 15.0, bottom: 0.0, trailing: 15.0))
        }
    }
}

#Preview {
    ArtPieceInfoView()
}
