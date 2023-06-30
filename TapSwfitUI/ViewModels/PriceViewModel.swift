//
//  PriceViewModel.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import Foundation

struct PriceViewModel{
    let price: Price
    
    var classe: String{
        return price.classe.rawValue
    }
    
    var preco: Double{
        return price.preco
    }
}
