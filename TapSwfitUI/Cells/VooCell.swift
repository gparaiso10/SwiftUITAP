//
//  VooCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct VooCell: View {
    let voo: Voo
    
    var body: some View {
        VStack(alignment: .leading){
            HoursCell(horaSaida: voo.horaSaida, horaChegada: voo.horaChegada, localSaida: voo.localSaida, localChegada: voo.localChegada, id: voo.id)
            HStack{
                PriceCell(classe: voo.classes[0], preco: voo.precos[0]).padding()
                PriceCell(classe: voo.classes[1], preco: voo.precos[1]).padding()
            }

            HStack{
                Image("TapIcon").resizable().frame(width: 40, height: 40).padding()
                Text("Operado por TAP Air Portugal").font(.system(size: 10))
            }
        }.background(Color.white)
            
        
    }
}

struct VooCell_Previews: PreviewProvider {
    static var previews: some View {
        VooCell(voo: Voo(id: "TP 1980",horaSaida: DateComponents(hour: 5, minute: 10), horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50]))
    }
}
