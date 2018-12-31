//
//  GameScene.swift
//  Exploding Monkeys
//
//  Created by Evgeniy Ryshkov on 31/12/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var buildings = [BuildingNode]()
    
    //MARK: -
    func createBuildings() {
        var currentX: CGFloat = -15
        
        while currentX < 1024 {
            let size = CGSize(width: Int.random(in: 2...4) * 40, height: Int.random(in: 300...600))
            currentX += size.width + 2
            
            let building = BuildingNode(color: UIColor.red, size: size)
            
            building.position = CGPoint(x: currentX - (size.width / 2), y: size.height / 2)
            
            building.setup()
            addChild(building)
            
            buildings.append(building)
        }
    }
    
    //MARK: -
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(hue: 0.669, saturation: 0.99, brightness: 0.67, alpha: 1)
        
        createBuildings()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
