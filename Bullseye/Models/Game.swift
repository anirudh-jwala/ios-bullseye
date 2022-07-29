//
//  Game.swift
//  Bullseye
//
//  Created by Anirudh on 29/07/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let awaredPoints = 100 - difference
        return awaredPoints
    }
}
