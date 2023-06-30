//
//  HoursCellViewModel.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import Foundation
import SwiftUI

struct HoursCellViewModel{
    
    var horaSaida: DateComponents
    var horaChegada: DateComponents
    var localSaida: String
    var localChegada: String
    var id: String
    var timeDifference = DateComponents()
    
    init(horaSaida: DateComponents, horaChegada: DateComponents, localSaida: String, localChegada: String, id: String) {
        self.horaSaida = horaSaida
        self.horaChegada = horaChegada
        self.localSaida = localSaida
        self.localChegada = localChegada
        self.id = id
        timeDifference = subtractTime(dateComponents1: horaChegada, dateComponents2: horaSaida)
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
    
    func getHoraFormatted(hora: DateComponents) -> Text{
        return Text("\(String(format: "%02d" ,hora.hour!)):\(String(format: "%02d" ,hora.minute!))")
    }

    
}
