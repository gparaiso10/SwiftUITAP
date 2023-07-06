//
//  PriceViewModel.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import Foundation

struct PriceViewModel{
    let price: Price
    let id = UUID()
    
    var classe: String{
        return price.classe.rawValue
    }
    
    var preco: Double{
        return price.preco
    }
}
