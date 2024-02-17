//
//  ContentView.swift
//  DemoNavSwift
//
//  Created by Cesar PaezTerminalScript.shTerminalScript.sh on 13/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var bShow = false
    @State private var texto = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Texto", text: $texto)
                Button("Abrir Modal"){
                    bShow.toggle()
                }
                .sheet(isPresented: $bShow, content: {
                    VentanaModal(texto:texto)
                })
                NavigationLink("Segunda vista", value: "v1")
                NavigationLink("Terrcer Vista", value: "v2")
            }.navigationTitle("Primera view")
            .padding(.all)
            .navigationDestination(for: String.self) { value in
                if value=="v1"{
                    SegundaVista(texto: texto)
                }else{
                    Text("Tercer vista \(value)")
                }

            }
            .toolbar(content: {
                HStack{
                    NavigationLink("+", value: "v1")
                    NavigationLink("-", value: "v2")
                }
                
            })
        }
    }
}

#Preview {
    ContentView()
}
