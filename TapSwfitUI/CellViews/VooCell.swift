//
//  VooCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct VooCell: View {
    let vooVM: VooViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            HoursCell(HoursCellVM: HoursCellViewModel(horaSaida: vooVM.horaSaida, horaChegada: vooVM.horaChegada, localSaida: vooVM.localSaida, localChegada: vooVM.localChegada, id: vooVM.id))
            
            HStack{
                PriceCell(priceVM:
                            PriceViewModel(price:
                                            Price(classe: vooVM.classe1, preco: vooVM.preco1))).padding()
                PriceCell(priceVM:
                            PriceViewModel(price:
                                            Price(classe: vooVM.classe2, preco: vooVM.preco2))).padding()
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
        VooCell(vooVM: VooViewModel( voo: Voo(id: "TP 1980",horaSaida: DateComponents(hour: 5, minute: 10), horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", classes: [.economy, .executive], precos: [64.03, 994.50])))
    }
}
