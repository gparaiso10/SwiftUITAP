//
//  HourCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct HoursCell: View {
    
    let HoursCellVM: HoursCellViewModel
    
    var body: some View {
        
        HStack{
            HourHeaderCell(title: HoursCellVM.getHoraFormatted(hora: HoursCellVM.horaSaida), subtitle: HoursCellVM.localSaida)
            Arrow()
                        .stroke(.black, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                        .frame(width: 100, height: 100)
                        
                        
            HourHeaderCell(title: HoursCellVM.getHoraFormatted(hora: HoursCellVM.horaChegada), subtitle: HoursCellVM.localChegada)
            Spacer()
            VStack(alignment: .trailing){
                Text("\(HoursCellVM.timeDifference.hour!)h\(HoursCellVM.timeDifference.minute!)m").font(.system(size: 12))
                Text(HoursCellVM.id)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.07, green: 0.44, blue: 0.27))
                    .underline()
            }.padding()
        }.padding()
    }
}

struct HoursCell_Previews: PreviewProvider {
    static var previews: some View {
        HoursCell(HoursCellVM: HoursCellViewModel(horaSaida:DateComponents(hour: 5, minute: 10) , horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", id: "TP 1980"))
    }
}

