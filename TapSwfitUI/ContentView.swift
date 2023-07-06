//
//  ContentView.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct ContentView: View {
    let vooListVM = VooListViewModel(voos: Voo.all())
    
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading){
                VooHeaderCell(localSaida: "OPO", localDestino: "FAO", numeroPassageiros: 1, numeroVoos: Voo.all().count)
                Spacer()
                VooListView(voos: vooListVM.voos)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
