import SwiftUI
import SpriteKit

class Ball: SKSpriteNode {
    init(texture: SKTexture,
         position: CGPoint,
         categoryBitMask: UInt32,
         contactTestBitMask: UInt32,
         size: CGFloat) {
        super.init(texture: texture, color: .clear, size: texture.size())
        self.position = position
        self.size = CGSize(width: size, height: size)
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: size, height: size))
        self.physicsBody?.categoryBitMask = categoryBitMask
        self.physicsBody?.isDynamic = false
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.contactTestBitMask = contactTestBitMask
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
