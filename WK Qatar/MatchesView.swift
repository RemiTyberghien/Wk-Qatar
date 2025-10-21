//
//  MatchesView.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 21/10/2025.
//

import SwiftUI

struct MatchesView: View {
    @Environment(WKDataStore.self) private var wkDataStore
    @Binding var land : String?
    @Binding var geselecteerdStadion: String?
    var body: some View {

    Grid(alignment: .leading, horizontalSpacing: 16, verticalSpacing: 8) {

                    ForEach(store.wedstrijden(inStadium: $geselecteerdStadion), id: \.self) { match in
                        GridRow {
                            Text(match.homeTeam)
                            Text("X")
                            Text(match.awayTeam)
                        }
                        .padding(.vertical, 8)
                        .foregroundColor(
                            (match.homeTeam == $land || match.awayTeam == $land)
                            ? Color.blue
                        )
                        GridRow
                        {
                            Text(scoreText(match.homeTeamScore))
                            Text("-")
                            Text(scoreText(match.awayTeamScore))
                        }
                        }
                    }
   }
}


