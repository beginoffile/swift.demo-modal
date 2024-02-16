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
                NavigationLink("Segunda vista", value: "v1")
                NavigationLink("Terrcer Vista", value: "v2")
            }.navigationTitle("Primera view")
           
            .navigationDestination(for: String.self) { value in
                if value=="v1"{
                    SegundaVista()
                }else{
                    Text("Tercer vista \(value)")
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
