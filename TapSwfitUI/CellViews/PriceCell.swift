//
//  PriceCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct PriceCell: View {
    
    let priceVM: PriceViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
            
            VStack(alignment: .leading) {
                HStack {
                    VStack {
                        Spacer()
                        Text(priceVM.classe).font(.system(size: 20))
                    }
                    VStack {
                        Spacer()
                        Text("desde").font(.system(size: 10))
                    }
                }
                VStack {
                    Text("\(String(format: "%.2f" ,priceVM.preco))€").bold().font(.system(size: 18))
                    Spacer()
                }
            }
        }
        .frame(width: 155.5, height: 72)
    }
}

struct PriceCell_Previews: PreviewProvider {
    static var previews: some View {
        PriceCell(priceVM: PriceViewModel(price: Price(classe: .executive, preco: 994.5)))
    }
}
