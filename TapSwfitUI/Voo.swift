//
//  Voo.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import Foundation

struct Voo{
    var id: String
    var horaSaida: DateComponents
    var horaChegada: DateComponents
    var localSaida: String
    var localChegada: String
    var classes: [Classe]
    var precos: [Double]
    
}

enum Classe: String {
    case economy = "Economy"
    case executive = "Executive"
}
