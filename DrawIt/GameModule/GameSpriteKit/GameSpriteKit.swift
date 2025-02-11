import SwiftUI
import SpriteKit

class GameSpriteKit: SKScene, SKPhysicsContactDelegate {
    @Published private var audioManager = AudioManager()
    var game: GameData?
    var currentLine: SKShapeNode?
    var firstBall: Ball!
    var secondBall: Ball!
    var timeLabel : SKLabelNode!
    var lineImage: SKSpriteNode!
    var timer: Timer?
    var hasContacted = false
    let currentIndex = UserDefaultsManager.defaults.object(forKey: Keys.numberOfLevel.rawValue) as! Int - 1
    
    let arrayOfImagesBlock = [ImageName.firstBlock.rawValue,
                              ImageName.secondBlock.rawValue,
                              ImageName.thirdBlock.rawValue,
                              ImageName.fourthBlock.rawValue,
                              ImageName.fifthBlock.rawValue,
                              ImageName.fifthBlock.rawValue,
                              ImageName.seventhBlock.rawValue,
                              ImageName.fourthBlock2.rawValue,
                              ImageName.secondBlock.rawValue,
                              ImageName.tenthBlock.rawValue,
                              ImageName.fourthBlock2.rawValue,
                              ImageName.seventhBlock.rawValue]
    
    let arrayOfImagesSecondBlock = ["ImageName.firstBlock.rawValue",
                                    "ImageName.firstBlock.rawValue",
                                    "ImageName.firstBlock.rawValue",
                                    ImageName.fourthBlock2.rawValue,
                                    ImageName.fifthBlock.rawValue,
                                    "ImageName.fifthBlock.rawValue",
                                    "ImageName.fifthBlock.rawValue",
                                    ImageName.fourthBlock2.rawValue,
                                    ImageName.ninthBlock.rawValue,
                                    ImageName.fifthBlock.rawValue,
                                    ImageName.fifthBlock.rawValue,
                                    ImageName.fifthBlock.rawValue]
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let path = UIBezierPath()
        path.move(to: location)
        audioManager.playDrawSound()
        currentLine = SKShapeNode(path: path.cgPath)
        currentLine?.strokeColor = .white
        currentLine?.lineWidth = 5
        self.addChild(currentLine!)
        
        if let tappedNode = self.atPoint(location) as? SKSpriteNode, tappedNode.name == "pauseBack" || tappedNode.name == "pause" {
            game?.isPause = true
        }
        
        if let tappedNode = self.atPoint(location) as? SKSpriteNode, tappedNode.name == "restartButton" || tappedNode.name == "restartBackButton"{
            resetScene()
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first,
        let line = currentLine else { return }
        let location = touch.location(in: self)
        if let path = line.path {
            lineImage.size.width -= 0.5
           
            lineImage.position.x -= 0.18
            let bezierPath = UIBezierPath(cgPath: path)
            bezierPath.addLine(to: location)
            line.path = bezierPath.cgPath
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let line = currentLine {
            if let view = self.view {
                let texture = view.texture(from: line)
                let spriteNode = SKSpriteNode(texture: texture)
                spriteNode.position = CGPoint(x: line.position.x + line.frame.midX,
                                              y: line.position.y + line.frame.midY)
                guard texture != nil else { return }
                spriteNode.physicsBody = SKPhysicsBody(texture: texture!, size: spriteNode.size)
                spriteNode.physicsBody?.isDynamic = true
                spriteNode.physicsBody?.affectedByGravity = true
                line.removeFromParent()
                self.addChild(spriteNode)
                currentLine = nil
                secondBall.physicsBody?.isDynamic = true
                secondBall.physicsBody?.affectedByGravity = true
                
                firstBall.physicsBody?.isDynamic = true
                firstBall.physicsBody?.affectedByGravity = true
                
                audioManager.stopDrawSounds()
            }
        }
    }
    
    deinit {
        removeAllChildren()
        removeAllActions()
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        let bodyA = contact.bodyA
        let bodyB = contact.bodyB
        
        if bodyA.node?.physicsBody?.contactTestBitMask == bodyB.node?.physicsBody?.contactTestBitMask {
       
            
            if !hasContacted {
                game?.isWin = true
                timer?.invalidate()
                hasContacted = true
                
                firstBall.physicsBody?.isDynamic = false
                secondBall.physicsBody?.isDynamic = false
                
                
                if lineImage.size.width < 140 {
                    print("less than 140")
                    UserDefaultsManager().saveStarImage(image: ImageName.oneStarImage.rawValue)
                }
                
                if lineImage.size.width < 230, lineImage.size.width > 140 {
                    print("less than 140 but more 230")
                    UserDefaultsManager().saveStarImage(image: ImageName.twoStarImage.rawValue)
                }
                
                if lineImage.size.width > 230 {
                    print("more than 230")
                    UserDefaultsManager().saveStarImage(image: ImageName.threeStarImage.rawValue)
                }
            }
           
        }
    }
}
