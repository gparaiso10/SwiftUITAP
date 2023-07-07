//
//  VooHeaderCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 19/06/2023.
//

import SwiftUI

struct VooHeaderCell: View {
    let localSaida: String
    let localDestino: String
    let numeroPassageiros: Int
    let numeroVoos: Int
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Voo de ida").font(.title).bold()
                Text("\(localSaida) - \(localDestino) \(numeroPassageiros) Passageiro")
            }.padding()
            Spacer()
                Text("\(numeroVoos)")
                    .foregroundColor(.white).bold()
                    .font(.system(size: 20))
                    .padding()
                    .background(Color(red: 0.07, green: 0.44, blue: 0.27))
                    .clipShape(Circle())
            Image("17").padding(.trailing)

        }
    }
}

struct VooHeaderCell_Previews: PreviewProvider {
    static var previews: some View {
        VooHeaderCell(localSaida: "OPO", localDestino: "FAO", numeroPassageiros: 1, numeroVoos: 4)
        .previewLayout(.sizeThatFits)}
}
