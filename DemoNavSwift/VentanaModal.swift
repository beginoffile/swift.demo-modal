//
//  VentanaModal.swift
//  DemoNavSwift
//
//  Created by Aguid Ramirez Sanchez on 13/02/24.
//

import SwiftUI

struct VentanaModal: View {
    
    @Environment(\.presentationMode) var back
    var texto:String
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            VStack{
                Text(texto)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
                
            }
        }
    }
}
