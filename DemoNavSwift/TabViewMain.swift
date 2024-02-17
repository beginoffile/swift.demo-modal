//
//  TabViewMain.swift
//  DemoNavSwift
//
//  Created by Aguid Ramirez Sanchez on 16/02/24.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            Vista2().tabItem {
                Label("Home", systemImage: "plus")
            }
            TercerVista().tabItem {
                Label("Camara", systemImage: "camera")
            }
            
            
        }
    }
}


