//
//  ContentView.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var wkDataStore = WKDataStore()
    @State var land : String?
    var body: some View {
        NavigationStack {
            StartView(land: $land)
            
        }
        .environment(wkDataStore)
    }
}

#Preview {
    ContentView()
}
