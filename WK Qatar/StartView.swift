//
//  StartView.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 20/10/2025.
//

import SwiftUI

struct StartView: View {
    @Environment(WKDataStore.self) private var wkDataStore
    @Binding var land : String?
    var body: some View {
    List(wkDataStore.landenZoeken(), id: \.self, selection: $land ) { land in
                Text(land)
            }
            .navigationTitle(landen)

        
    }
}

#Preview {
    StartView()
}
