//
//  WKDataStore.swift
//  WK Qatar
//
//  Created by Remi.Tyberghien on 20/10/2025.
//

import Foundation


@Observable
class  WKDataStore {
    
    
    var results : [WKResult]
    
    init(){
        results = load("WKResultsQatar.json")
    }
    


    func landenZoeken() -> [String] {
            var landen = results.map { $0.homeTeam }
            landen = landen.filter{!$0.hasPrefix("1")}
            landen = landen.filter{!$0.hasPrefix("To be announced")}
            return Array(Set(landen)).sorted()

    }

     func stadiumsZoeken() -> [String] {
         var stadiums = results.map { $0.location }
         stadiums = stadiums.filter{!$0.hasPrefix("TBA")}
            return Array(Set(stadiums)).sorted()
        }
}
