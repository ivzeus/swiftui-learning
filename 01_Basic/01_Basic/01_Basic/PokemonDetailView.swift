//
//  PokemonDetail.swift
//  01_Basic
//
//  Created by Hoang Ngoc Toan on 1/6/20.
//  Copyright © 2020 Hoang Ngoc Toan. All rights reserved.
//

import SwiftUI

struct Pokemon {
    var id: Int
    var name: String
    var logo: String
    var stats: PokemonStats
    var weight: Int
    var types: [String]
    
    init(id: Int, name: String, weight: Int) {
        self.id = id
        self.name = name
        self.logo = "placeholder"
        self.stats = PokemonStats()
        self.weight = weight
        self.types = [String]()
    }
    
    mutating func addType(type: String) {
        self.types.append(type)
    }
    
    mutating func addLogo(url: String) {
        self.logo = url
    }
    
    mutating func setStat(stat: String, val: Int) {
        if (stat == "hp") {
            self.stats.setHP(hp: val)
        } else if (stat == "speed") {
            self.stats.setSpeed(speed: val)
        } else if (stat == "def") {
            self.stats.setDef(def: val)
        } else if (stat == "specialDef") {
            self.stats.setSpecialDef(specialDef: val)
        } else if (stat == "atk") {
            self.stats.setAtk(atk: val)
        } else if (stat == "specialAtk") {
            self.stats.setSpecialAtk(specialAtk: val)
        }
    }
}

struct PokemonDetailView: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack(alignment: .center) {
            PokemonImageView(img: pokemon.logo)
            
            HStack {
                Text(pokemon.name)
                Spacer()
            }
            
            PokemonStatsView(pokemonStats: pokemon.stats)
            
            Spacer()
        }.padding(10)
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        var pokemon = Pokemon(id: 0, name: "Bulbarsaur", weight: 100)
        pokemon.setStat(stat: "hp", val: 1200)
        pokemon.setStat(stat: "speed", val: 250)
        pokemon.setStat(stat: "atk", val: 300)
        pokemon.setStat(stat: "def", val: 200)
        pokemon.setStat(stat: "specialAtk", val: 450)
        pokemon.setStat(stat: "specialDef", val: 250)
        
        return PokemonDetailView(pokemon: pokemon)
    }
}
