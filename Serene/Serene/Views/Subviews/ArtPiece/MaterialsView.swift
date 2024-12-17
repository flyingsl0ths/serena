//
//  MaterialsView.swift
//  Serena
//
//  Created by Gabriel Celis on 9/17/24.
//

import SwiftUI

struct MaterialsView: View {
    var body: some View {
        HStack(spacing: 24) {
            Image(systemName: "photo.artframe.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 77)
            Text("""
            Lorem ipsum dolor sit amet, consectetur
            adipiscing elit. Morbi volutpat nibh pharetra
            urna venenatis bibendum. Ut et ultrices velit.
            Integer vehicula, diam nec molestie convallis, 
            elit felis tempor metus, luctus.
            """).font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    MaterialsView()
}
