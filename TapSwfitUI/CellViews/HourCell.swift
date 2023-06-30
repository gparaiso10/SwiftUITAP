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
            VStack(alignment: .leading){
                HoursCellVM.getHoraFormatted(hora: HoursCellVM.horaSaida).font(.system(size: 20)).bold()
                Text(HoursCellVM.localSaida)
            }
            Text("------->")
            VStack(alignment: .leading){
                HoursCellVM.getHoraFormatted(hora: HoursCellVM.horaChegada).font(.system(size: 20)).bold()
                Text(HoursCellVM.localChegada)
            }
            Spacer()
            VStack(alignment: .trailing){
                Text("\(HoursCellVM.timeDifference.hour!)h\(HoursCellVM.timeDifference.minute!)m").font(.system(size: 12))
                Text(HoursCellVM.id)
                    .font(.subheadline)
                    .foregroundColor(.green)
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

