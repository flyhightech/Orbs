//
//  GameHandler.swift
//  Orbs
//
//  Created by Bernard Huff on 8/15/18.
//  Copyright © 2018 Flyhightech.LLC. All rights reserved.
//

import Foundation

class GameHandler {
    
    var score:Int
    var highScore:Int
    
//    The beginnings of the singleton class
    
    class var sharedInstance:GameHandler {
        struct Singleton {
            static let instance = GameHandler()
        }
        return Singleton.instance
    }
    
    init() {
        score = 0
        highScore = 0
        
        let userDefaults = UserDefaults.standard
        highScore = userDefaults.integer(forKey: "highScore")
    }
    
    func saveGameStats() {
        highScore = max(score, highScore)
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(highScore, forKey: "highScore")
        userDefaults.synchronize()
    }
    
    
    
    
    
//    Well when you figure it out you'll be further than now.
}
