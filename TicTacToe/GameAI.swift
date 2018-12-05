//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    //let topRight = board[(0,2)]
    //check vertical wins
    for x in 0..<3 {
        var markCount = 0
        for y in 0...3 {
            if board[(x,y)] == player {
                markCount += 1
            }
            
        }
        if markCount == 3 {
            return true
        }
    }
    
    
    
    // check horizontal wins
    
    for y in 0..<3 {
        var markCount = 0
        for x in 0...3 {
            if board[(x,y)] == player {
                markCount += 1
            }
            
        }
        if markCount == 3 {
            return true
        }
    }
    
    
    
    
    
    //check diagonal wins
    
   // let lefttoRight: [Coordinate] = [(0,0), (1,1), (0,2)]
    
    if board[(0,0)] == board [(1,1)] &&  board [(1,1)] == board[(2,2)] {
        return true
    }
    
    //let righttoLeft: [Coordinate] = [(2,0), (1,1), (0,2)]
    
    if board[(2,0)] == player && board[(1,1)] == player && board[(0,2)] == player {
        return true
        
    }
return false
}
