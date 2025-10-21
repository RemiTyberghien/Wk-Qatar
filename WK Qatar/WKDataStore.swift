//
//  WKDataStore.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 20/10/2025.
//

import Foundation


@Observable
class  WKDataStore {
    
    
    var result : [WKResult]
    
    init(){
        result = load("WKResultsQatar.json")
    }
    
    func landenZoeken() -> [String] {
            let landen = results.Map { [$0.homeTeam, $0.awayTeam] }
            return Array(Set(landen)).sorted()
    }

     func stadiumsZoeken() -> [String] {
            let stadiums = results.map { $0.location }
            return Array(Set(stadiums)).sorted()
        }
}
