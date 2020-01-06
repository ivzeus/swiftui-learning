//
//  PokemonStats.swift
//  01_Basic
//
//  Created by Hoang Ngoc Toan on 1/6/20.
//  Copyright © 2020 Hoang Ngoc Toan. All rights reserved.
//

import SwiftUI

struct PokemonStats {
    var hp: Int
    var speed: Int
    var defense: Int
    var attack: Int
    var specialDefense: Int
    var specialAttack: Int
    
    init() {
        self.hp = 0
        self.speed = 0
        self.defense = 0
        self.attack = 0
        self.specialDefense = 0
        self.specialAttack = 0
    }
    
    mutating func setHP(hp: Int) {
        self.hp = hp
    }
    
    mutating func setSpeed(speed: Int) {
        self.speed = speed
    }
    
    mutating func setAtk(atk: Int) {
        self.attack = atk
    }
    
    mutating func setSpecialAtk(specialAtk: Int) {
        self.specialAttack = specialAtk
    }
    
    mutating func setDef(def: Int) {
        self.defense = def
    }
    
    mutating func setSpecialDef(specialDef: Int) {
        self.specialDefense = specialDef
    }
}

struct PokemonStatsView: View {
    var pokemonStats: PokemonStats;
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                
                Text("Abilities:")
                Text("Moves:")
                
                Text("Stats:")
                HStack {
                    Text("- HP: ")
                    Text(String(pokemonStats.hp))
                    Spacer()
                }
                HStack {
                    Text("- Speed: ")
                    Text(String(pokemonStats.speed))
                    Spacer()
                }
                HStack {
                    Text("- Attack: ")
                    Text(String(pokemonStats.attack))
                    Spacer()
                }
                HStack {
                    Text("- Special Attack: ")
                    Text(String(pokemonStats.specialAttack))
                    Spacer()
                }
                HStack {
                    Text("- Defense: ")
                    Text(String(pokemonStats.defense))
                    Spacer()
                }
                HStack {
                    Text("- Special Defense: ")
                    Text(String(pokemonStats.specialDefense))
                    Spacer()
                }
                
                Text("Types:")
            }.padding(32)
        }
    }
}

struct PokemonStats_Previews: PreviewProvider {
    static var previews: some View {
        var pokemonStats = PokemonStats()
        pokemonStats.setHP(hp: 1000)
        pokemonStats.setSpeed(speed: 200)
        pokemonStats.setAtk(atk: 250)
        pokemonStats.setDef(def: 240)
        pokemonStats.setSpecialAtk(specialAtk: 450)
        pokemonStats.setSpecialDef(specialDef: 350)
            
        return PokemonStatsView(pokemonStats: pokemonStats)
    }
}
