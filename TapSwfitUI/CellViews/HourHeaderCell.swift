//
//  HourHeaderCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 06/07/2023.
//

import SwiftUI

struct HourHeaderCell: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title).font(.system(size: 20)).bold()
            Text(subtitle)
        }
        
    }
}

struct HourHeaderCell_Previews: PreviewProvider {
    static var previews: some View {
        HourHeaderCell(title: "10: 30", subtitle: "FAO")
    }
}
