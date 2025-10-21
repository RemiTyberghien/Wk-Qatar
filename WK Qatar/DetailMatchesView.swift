//
//  DetailMatchesView.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 21/10/2025.
//

import SwiftUI

struct DetailMatchesView: View {
    @Environment(WKDataStore.self) private var wkDataStore
    @Binding var land : String?
    @Binding var geselecteerdStadion: String?
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DetailMatchesView()
}
