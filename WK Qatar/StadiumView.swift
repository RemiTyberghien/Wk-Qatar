//
//  StadiumView.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 20/10/2025.
//

import SwiftUI

struct StadiumView: View {
    @Environment(WKDataStore.self) private var wkDataStore
    @Binding var land : String?
    @State var geselecteerdStadion: String?

    var body: some View {
        List(wkDataStore.stadiumsZoeken(), id: \.self) { stadium in
            Text(stadium)
        }
        .navigationTitle("Stadions")
        
        

    }
}


