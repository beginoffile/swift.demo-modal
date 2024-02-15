//
//  ContentView.swift
//  DemoNavSwift
//
//  Created by Cesar PaezTerminalScript.shTerminalScript.sh on 13/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var bShow = false
    var body: some View {
        NavigationStack{
            VStack{
                Button("Abrir Modal"){
                    bShow.toggle()
                }
                .sheet(isPresented: $bShow, content: {
                    VentanaModal()
                })
            }.navigationTitle("Primera view")
            NavigationLink("Segunda vista", value: "hola")
                .navigationDestination(for: String.self) { value in
                    SegundaVista()                }
        }
    }
}

#Preview {
    ContentView()
}
