//
//  Sign.swift
//  RPS
//
//  Created by me on 24/08/2019.
//  Copyright © 2019 Vlad Nemyrovsky. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0{
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    
    //        switch self {
    //        case .rock:
    //            switch opposite {
    //            case .rock:
    //                return .draw
    //            case .paper:
    //                return .lose
    //            case .scissors:
    //                return .win
    //            }
    //        case .paper:
    //            switch opposite {
    //            case .rock:
    //                return .win
    //            case .paper:
    //                return .draw
    //            case .scissors:
    //                return .lose
    //            }
    //        case .scissors:
    //            switch opposite {
    //            case .paper:
    //                return .win
    //            case .rock:
    //                return .lose
    //            case .scissors:
    //                return .draw
    //            }
    
    
    var emoji: String {
        switch self {
        case .paper:
            return "👋"
        case .rock:
            return "👊"
        case .scissors:
            return "✌️"
        }
    }
    
    func getResult(_ oposite: Sign) -> GameState {
        switch (self, oposite) {
        case (.rock, .rock),
             (.paper, .paper),
             (.scissors, .scissors):
            return .draw
        case (.rock, .scissors),
             (.paper, .rock),
             (.scissors, .paper):
            return .win
        default:
            return .lose
        }
    }
}
