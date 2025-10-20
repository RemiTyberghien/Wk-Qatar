//
//  ContentView.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State var wkDataStore = WKDataStore()
    var body: some View {
        
        NavigationStack
        {
            
        }
    }.environment(wKDataStore)
}

#Preview {
    ContentView()
}
