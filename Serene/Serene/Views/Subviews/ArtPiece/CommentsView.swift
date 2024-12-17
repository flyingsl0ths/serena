//
//  CommentsView.swift
//  Serena
//
//  Created by Gabriel Celis on 9/17/24.
//

import SwiftUI

struct CommentsView: View {
    var body: some View {
        VStack {
            HStack(spacing: 24) {
                Image(systemName: "photo.artframe.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 77)
                VStack(spacing: 20) {
                    HStack {
                        Text("username")
                            .font(.footnote)

                        Image(systemName: "diamond.fill")
                            .resizable()
                            .foregroundStyle(.text)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 4)

                        Text("N minutes ago")
                            .font(.footnote)
                            .foregroundStyle(.text)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Text("""
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat nibh pharetra urna venenatis bibendum. Ut et ultrices velit. Integer vehicula, diam nec molestie convallis,  elit felis tempor metus, luctus.
                    """).font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    HStack {
                        Text("Reply")
                            .font(.footnote)
                            .foregroundStyle(.text)

                        Spacer()

                        HStack {
                            Image(systemName: "heart")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16)
                            Text("24")

                                .font(.footnote)
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                    }

                    Text("View N more replies")
                        .foregroundStyle(.text)
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 11, bottom: 0, trailing: 0))
                }
            }
        }
    }
}

#Preview {
    CommentsView()
}
