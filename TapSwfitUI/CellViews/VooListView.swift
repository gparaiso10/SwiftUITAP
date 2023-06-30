//
//  VooListView.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import SwiftUI

struct VooListView: View {
    let voos: [VooViewModel]
    
    var body: some View {
        VStack(alignment: .leading){
            Section(header: Text("Voos diretos").padding()){
            List(voos, id: \.id) { voo in
                    VooCell(vooVM: voo)
                }
            }
        }
    }
}

struct VooListView_Previews: PreviewProvider {
    static var previews: some View {
        VooListView(voos: [
            VooViewModel(voo: Voo(id: "TP 1980", horaSaida: DateComponents(hour: 5, minute: 10), horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50])),
            VooViewModel(voo: Voo(id: "TP 8535",horaSaida: DateComponents(hour: 8, minute: 15), horaChegada: DateComponents(hour: 10, minute: 0), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50]))
        ])
    }
}
