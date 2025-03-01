//
//  Results.swift
//  CPSC 5330 Assignment 7
//
//  Created by user273384 on 2/28/25.
//

import Foundation

struct Results {
    
    init(_ dateIn: String, _ opponentIn: String, _ resultIn: String, _ scoreIn: String) {
        date = dateIn
        opponent = opponentIn
        result = resultIn
        score = scoreIn
    }
    
    var date: String
    var opponent: String
    var result: String
    var score: String
    
}
