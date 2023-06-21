//
//  ContentView.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct ContentView: View {
    let voos = [
        Voo(id: "TP 1980", horaSaida: DateComponents(hour: 5, minute: 10), horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50]),
        Voo(id: "TP 8535",horaSaida: DateComponents(hour: 8, minute: 15), horaChegada: DateComponents(hour: 10, minute: 0), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50])
    
    ]
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading){
                VooHeaderCell(localSaida: "OPO", localDestino: "FAO")
                Spacer()
                Text("Voos diretos").padding()
                List(voos, id: \.id) { voo in
                    VooCell(voo: voo)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
