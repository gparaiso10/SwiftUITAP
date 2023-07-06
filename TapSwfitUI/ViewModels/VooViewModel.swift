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
    
    var operadora: String {
        return "Operado por \(voo.operadora)"
    }
    
    var iconImageURL: String{
        return voo.iconImage
    }
    
    var precos: [PriceViewModel]{
        return voo.precos.map { PriceViewModel(price: $0) }
    }
    
}
