//
//  MainFooter.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 07/07/2023.
//

import SwiftUI

struct MainFooter: View {
    let preco: Double
    var body: some View {
        HStack{
            Image("UpButton")
            VStack{
                Text("Total")
                Text("\((preco == 0.0) ? "-" : String(preco))€").font(.system(size: 20)).bold()
            }
            Spacer()
            Button("Continuar"){
                //action
            }.padding()
                .frame(width: 131, height: 48, alignment: .center)
                .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                .cornerRadius(6)
                .foregroundColor(Color(red: 0.29, green: 0.29, blue: 0.29))
                .font(.system(size: 16).weight(.semibold))
        }.padding()
    }
}

struct MainFooter_Previews: PreviewProvider {
    static var previews: some View {
        MainFooter(preco: 0.0)
    }
}
