//
//  ResultLogic.swift
//  CPSC 5330 Assignment 7
//
//  Created by user273384 on 2/28/25.
//

import Foundation

struct ResultLogic {
    
    var resultIndex: Int = 0
    
    let result = [
        Results("Aug 31",
                "Alabama A&M",
                "W",
                "73 - 3"),
        Results("Sept 7",
                "California",
                "L",
                "21 - 14"),
        Results("Sept 14",
                "New Mexico",
                "W",
                "45 - 19"),
        Results("Sept 21",
                "Arkansas",
                "L",
                "24 - 14"),
        Results("Sept 28",
                "Oklahoma",
                "L",
                "27 - 21"),
        Results("Oct 5",
                "Georgia",
                "L",
                "31 - 13"),
        Results("Oct 19",
                "Missourri",
                "L",
                "21 - 17"),
        Results("Oct 26",
                "Kentucky",
                "W",
                "24 - 10"),
        Results("Nov 2",
                "Vanderbuilt",
                "L",
                "17 - 7"),
        Results("Nov 16",
                "UL Monroe",
                "W",
                "48 - 14"),
        Results("Nov 23",
                "Texas A&M",
                "W",
                "43 - 41 4OT"),
        Results("Nov 30",
                "Alabama",
                "L",
                "28 - 14")
    ]
    
    func getCount() -> Int {
        return result.count
    }
    
    func getDate(_ index: Int) -> String {
        return result[index].date
    }
    
    func getOpponent(_ index: Int) -> String {
        return result[index].opponent
    }
    
    func getWinLoss(_ index: Int) -> String {
        var temp = "Auburn "
        if result[index].result == "W" {
            temp += "defeats"
        } else {
            temp += "loses to"
        }
        return temp
    }
    
    func getScore(_ index: Int) -> String {
        return result[index].score
    }
}
