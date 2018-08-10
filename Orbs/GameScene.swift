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
    var player:SKSpriteNode?
   
//    Below is the array that sets up the tracks in the scene.
    
    func setupTracks() {
        for i in 0...8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray?.append(track)
            }
        }
    }
    
    func createPlayer() {
        player = SKSpriteNode(imageNamed: "player")
        guard let playerPosition = tracksArray?.first?.position.x else { return }
        player?.position = CGPoint(x: playerPosition, y: self.size.height / 2)
        
        self.addChild(player!)
    }
    
    override func didMove(to view: SKView) {
        setupTracks()
        createPlayer()
        
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    Gotta learn how to do this one step at a time.
}
