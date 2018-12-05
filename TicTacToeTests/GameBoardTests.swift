//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Yvette Zhukovsky on 12/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {

    //Test that board is full
    
    func testBoardisFull(){
        
        var board = GameBoard()
        for x in 0..<3 {
           for y in 0..<3 {
     XCTAssertFalse(board.isFull)
           try! board.place(mark: .x, on: (x,y))
            
            XCTAssertNotNil(board[(x,y)])
            
        
    }
        }
    }
    
  
    
//    func restMarkPlacementOnSameSquare(){
//        var board = GameBoard()
//
//        XCTAssertNoThrow(try board.place(mark: .x, on: (0,0)))
//        XCTAssertEqual(board[(0,0)], .x)
//
//      //  XCTAssertTh
//
//    }
    
    
    //Test adding on the mark
    func testAddingMarks(){
        var board = GameBoard()
        
        //If this thtowing method throws an error, then the test fails
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0,0)))
        
        //Make sure that the board actually has the mark on 0,0 now
        
        XCTAssertEqual(board[(0,0)], .x)
        //Same thing for 2,2
        XCTAssertNoThrow(try board.place(mark: .o, on:(2,2)))
        XCTAssertEqual(board[(2,2)], .o)
        
        //Make sure that no other marks were placed on the board
        
        for x in 0..<3 {
            
            for y in 0..<3 {
                
                if x == 0 && y == 0 {continue}
                if x == 2 && y == 2 {continue}
                
                //Make sure that the mark at x, y is nil except for 0,0 and 2,2
                
               // if (x,y) != (0,0) || (x,y) != (2,2) {continue}
                
                //We assume that all other squares are nil. If they aren't then fail the test
                
                XCTAssertNil(board[(x,y)])
            
        }
        
    }
    
    }
    
    //Test duplicate placement of mark on the same square
    
    
    
    
    
    
    
   
    //Test creagting an empty board
    
    func testCreatingEmptyBoard() {
        let board = GameBoard()
        //XCTAssertFalse(board.isFull)
        for x in 0..<3 {
            for y in 0..<3 {
                XCTAssertNil(board[(x,y)])
            }
        }
    
    }

    //Check that square is empty
    //If a square isn't empty, make the test fail
    
    

}
