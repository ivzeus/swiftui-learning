//
//  ContentView.swift
//  01_Basic
//
//  Created by Hoang Ngoc Toan on 1/5/20.
//  Copyright © 2020 Hoang Ngoc Toan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        var pokemon = Pokemon(id: 0, name: "Hello", weight: 100)
        pokemon.setStat(stat: "hp", val: 1200)
        
        return PokemonDetailView(pokemon: pokemon)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
