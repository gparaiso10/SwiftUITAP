//
//  VooViewModel.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import Foundation

struct VooViewModel{
    let voo: Voo
    
    var id: String{
        return voo.id
    }
    
    var horaSaida: DateComponents {
        return voo.horaSaida
    }
    
    var horaChegada: DateComponents{
        return voo.horaChegada
    }
    
    var localSaida: String{
        return voo.localSaida
    }
    
    var localChegada: String{
        return voo.localChegada
    }
    
    var classe1: Classe{
        return voo.classes[0]
    }
    
    var classe2: Classe{
        return voo.classes[1]
    }
    
    var preco1: Double{
        return voo.precos[0]
    }
    
    var preco2: Double{
        return voo.precos[1]
    }
}
