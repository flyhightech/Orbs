//
//  GameScene.swift
//  Orbs
//
//  Created by Bernard Huff on 8/9/18.
//  Copyright © 2018 Flyhightech.LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var tracksArray:[SKSpriteNode]? = [SKSpriteNode]()
    
    func setupTracks() {
        for i in 0...8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray?.append(track)
            }
        }
    }
    
    override func didMove(to view: SKView) {
        setupTracks()
        
        tracksArray?.last?.color = UIColor.yellow
        
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    Gotta learn how to do this one step at a time.
}
