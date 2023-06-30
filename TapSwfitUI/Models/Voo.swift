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

extension Voo{
    static func all() -> [Voo]{
        return [
            Voo(id: "TP 1980", horaSaida: DateComponents(hour: 5, minute: 10), horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50]),
            Voo(id: "TP 8535",horaSaida: DateComponents(hour: 8, minute: 15), horaChegada: DateComponents(hour: 10, minute: 0), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50])
        ]
    }
}

enum Classe: String {
    case economy = "Economy"
    case executive = "Executive"
}
