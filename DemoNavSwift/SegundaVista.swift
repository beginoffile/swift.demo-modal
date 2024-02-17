//
//  SegundaVista.swift
//  DemoNavSwift
//
//  Created by Aguid Ramirez Sanchez on 14/02/24.
//

import SwiftUI

struct SegundaVista: View {
    var texto: String
    var body: some View {
        Text(texto).navigationTitle(texto)
    }
}

