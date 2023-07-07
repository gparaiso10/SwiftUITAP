//
//  ListHeaderView.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 07/07/2023.
//

import SwiftUI

struct ListHeaderView: View {
    let index: Int
    let numeroVoos: Int
    
    var body: some View {
        HStack{
            Image("BackButton").padding()
            Text("\(index) de \(numeroVoos)").font(.system(size: 20)).bold().padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
            Text("Selecionar voos")
            Spacer()
            Image("pencil").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .padding()
                .colorInvert()
        }
            .frame(height: 40)
            .background(Color(red: 0.07, green: 0.44, blue: 0.27))
            .foregroundColor(.white)
            
            
            
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(index: 2, numeroVoos: 5)
    }
}
