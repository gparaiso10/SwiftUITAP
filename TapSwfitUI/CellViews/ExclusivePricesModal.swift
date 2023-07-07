//
//  ExclusivePricesModal.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 07/07/2023.
//

import SwiftUI

struct ExclusivePricesModal: View {
    @State private var isModalPresented = false
    var body: some View {
        HStack{
            Image("Manage Miles").padding(.leading)
            Text("Precos exclusivos para clientes Miles&Go")
                .font(.system(size: 12))
                .fontWeight(.semibold)
            Spacer()
            Button(action: {
                isModalPresented = true
                
            }){
                  Image("ic_chevron").padding(.trailing)
                      .frame(width: 16, height: 16)
            }
        }
            .foregroundColor(.white)
            .frame(height: 48)
            .background(Color(red: 0.07, green: 0.44, blue: 0.27))
            .sheet(isPresented: $isModalPresented) {
                ModalView()
            }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom){
                Image("Manage Miles").padding(.leading)
                Text("Precos exclusivos para clientes Miles&Go")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                      Image("ic_chevron")
                        .rotationEffect(Angle(degrees: 180))
                        .frame(width: 16, height: 16)
                        .padding(.trailing)
                }
            }
                .frame(height: 48)
                
            (
                Text("Faça Login ou crie uma conta para obter o desconto. Pode também optar por") + Text(" remover o desconto").underline().fontWeight(.semibold) +             Text("\n\nFaça Login ou Registe-se").underline().fontWeight(.semibold)
            ).padding(.bottom)
        }
            .background(Color(red: 0.07, green: 0.44, blue: 0.27))
            .foregroundColor(.white)
    }
}


struct ExclusivePricesModal_Previews: PreviewProvider {
    static var previews: some View {
        ExclusivePricesModal()
        ModalView()
    }
}
