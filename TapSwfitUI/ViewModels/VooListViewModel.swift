//
//  VooListViewModel.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import Foundation


struct VooListViewModel{
    var voos = [VooViewModel]()
    
    init(voos: [Voo]) {
        self.voos = getVoos(voos: voos)
    }
    
    private func getVoos(voos: [Voo]) -> [VooViewModel]{
        return voos.map(VooViewModel.init)
    }

}
