//
//  FooterCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 06/07/2023.
//

import SwiftUI

struct FooterCell: View {
    let imageURL: String
    let text: String
    var body: some View {
        HStack{
            Image(imageURL).resizable().frame(width: 40, height: 40).padding()
                Text(text).font(.system(size: 10))
            
        }
    }
}

struct FooterCell_Previews: PreviewProvider {
    static var previews: some View {
        FooterCell(imageURL: "TapIcon", text: "Operado por TAP")
    }
}
