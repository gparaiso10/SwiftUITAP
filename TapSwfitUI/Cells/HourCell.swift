//
//  HourCell.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 14/06/2023.
//

import SwiftUI

struct HoursCell: View {
    var horaSaida: DateComponents
    var horaChegada: DateComponents
    var localSaida: String
    var localChegada: String
    var id: String
    
    var body: some View {
        
        HStack{
            VStack(alignment: .leading){
                HourCell(hora: horaSaida)
                Text(localSaida)
            }.padding()
            Text("------->")


            VStack(alignment: .leading){
                HourCell(hora: horaChegada)
                Text(localChegada)
            }
            Spacer()
            TempoVoo(horaSaida: horaSaida, horaChegada: horaChegada, idVoo: id).padding()
        }
    }
}

struct HoursCell_Previews: PreviewProvider {
    static var previews: some View {
        HoursCell(horaSaida: DateComponents(hour: 05, minute: 10), horaChegada: DateComponents(hour: 6, minute: 40), localSaida: "OPO", localChegada: "FAO", id:"TP 1980")
    }
}

struct HourCell: View {
    var hora: DateComponents
    var body: some View {
        Text("\(String(format: "%02d" ,hora.hour!)):\(String(format: "%02d" ,hora.minute!))").font(.system(size: 20)).bold()
    }
}

struct TempoVoo: View {
    var horaSaida: DateComponents
    var horaChegada: DateComponents
    var idVoo: String
    
    var body: some View {
        return VStack(alignment: .trailing) {
            if let timeDifference = subtractTime(dateComponents1: horaChegada, dateComponents2: horaSaida) {
                Text("\(timeDifference.hour!)h\(timeDifference.minute!)m").font(.system(size: 12))
                
                Text(idVoo)
                    .font(.subheadline)
                    .foregroundColor(.green)
                    .underline()
            }
        }
    }
    
    func subtractTime(dateComponents1: DateComponents, dateComponents2: DateComponents) -> DateComponents {
        var difference = DateComponents()
        
        if let hour1 = dateComponents1.hour, let minute1 = dateComponents1.minute,
           let hour2 = dateComponents2.hour, let minute2 = dateComponents2.minute {
            let totalMinutes1 = (hour1 * 60) + minute1
            let totalMinutes2 = (hour2 * 60) + minute2
            
            let minutesDifference = totalMinutes1 - totalMinutes2
            
            difference.hour = minutesDifference / 60
            difference.minute = minutesDifference % 60
        }
        
        return difference
    }
}
