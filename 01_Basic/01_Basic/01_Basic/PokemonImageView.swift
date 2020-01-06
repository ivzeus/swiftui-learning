//
//  PokemonImage.swift
//  01_Basic
//
//  Created by Hoang Ngoc Toan on 1/6/20.
//  Copyright © 2020 Hoang Ngoc Toan. All rights reserved.
//

import SwiftUI

struct PokemonImageView: View {
    var img: String
    var body: some View {
        Image(img)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .padding(32)
    }
}

struct PokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageView(img: "placeholder")
    }
}
