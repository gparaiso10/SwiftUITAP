//
//  PriceCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct PriceCell: View {
    
    var classe: Classe
    var preco: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
            
            VStack(alignment: .leading) {
                HStack {
                    VStack {
                        Spacer()
                        Text(classe.rawValue).font(.system(size: 20))
                    }
                    VStack {
                        Spacer()
                        Text("desde").font(.system(size: 10))
                    }
                }
                VStack {
                    Text("\(String(format: "%.2f" ,preco))€").bold().font(.system(size: 18))
                    Spacer()
                }
            }
        }
        .frame(width: 155.5, height: 72)
    }
}

struct PriceCell_Previews: PreviewProvider {
    static var previews: some View {
        PriceCell(classe: .executive, preco: 994.5)
    }
}
