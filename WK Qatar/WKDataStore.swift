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
    
    func landenZoeken() -> [String]
    {
        result.homeTeam
    }
}
