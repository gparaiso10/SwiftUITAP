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
                ForEach(vooVM.precos, id: \.id) { preco in
                    PriceCell(priceVM: preco).padding()
                }
            }

            FooterCell(imageURL: vooVM.iconImageURL, text: vooVM.operadora)
        }.background(Color.white)
            
        
    }
}

struct VooCell_Previews: PreviewProvider {
    static var previews: some View {
        VooCell(vooVM: VooViewModel(voo: Voo.all()[0]))
    }
}
