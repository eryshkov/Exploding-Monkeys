//
//  BuildingNode.swift
//  Exploding Monkeys
//
//  Created by Evgeniy Ryshkov on 31/12/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit
import SpriteKit

class BuildingNode: SKSpriteNode {
    
    var currentImage: UIImage!
    
    func drawBuilding(size: CGSize) -> UIImage {
        return UIImage()
    }
    
    func configurePhysics() {
        physicsBody = SKPhysicsBody(texture: texture!, size: size)
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = CollisionTypes.building.rawValue
        physicsBody?.contactTestBitMask = CollisionTypes.banana.rawValue
    }
    
    func setup() {
        name = "building"
        
        currentImage = drawBuilding(size: size)
        texture = SKTexture(image: currentImage)
        
        configurePhysics()
    }
}
