//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Anirudh on 29/07/22.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    /**
     - Adding basic test case to check the equality of two values
        func testExample() {
            XCTAssertEqual(game.points(sliderValue: 50), 999)
        }
     */
    
    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
}
