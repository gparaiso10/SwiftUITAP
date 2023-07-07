//
//  VooListView.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 30/06/2023.
//

import SwiftUI

struct VooListView: View {
    let voos: [VooViewModel]
    let title: String
    
    var body: some View {
        VStack(alignment: .leading){
            Section(header: Text(title).padding()){
            List(voos, id: \.id) { voo in
                    VooCell(vooVM: voo)
                }
            }
        }
    }
}

struct VooListView_Previews: PreviewProvider {
    static var previews: some View {
        VooListView(voos: [
            VooViewModel(voo: Voo.all()[0]),
            VooViewModel(voo: Voo.all()[1])
        ], title: "Voos diretos")
    }
}
