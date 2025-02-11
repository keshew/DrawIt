import SwiftUI
import SpriteKit

extension GameSpriteKit {
    func returnBlockPosition() -> [CGPoint] {
        let arrayOfBlockPosition = [CGPoint(x: size.width / 2, y: size.height / 2.6),
                                    CGPoint(x: size.width / 2, y: size.height / 2.6),
                                    CGPoint(x: size.width / 2, y: size.height / 2.6),
                                    CGPoint(x: size.width / 1.75, y: size.height / 2.6),
                                    CGPoint(x: size.width / 1.2, y: size.height / 2.5),
                                    CGPoint(x: size.width / 2, y: size.height / 1.7),
                                    CGPoint(x: size.width / 3.5, y: size.height / 1.7),
                                    CGPoint(x: size.width / 4.5, y: size.height / 1.7),
                                    CGPoint(x: size.width / 2.6, y: size.height / 1.7),
                                    CGPoint(x: size.width / 2.9, y: size.height / 1.8),
                                    CGPoint(x: size.width / 2, y: size.height / 2.15),
                                    CGPoint(x: size.width / 1.2, y: size.height / 2)]
        return arrayOfBlockPosition
    }
    
    func returnSecondBlockPosition() -> [CGPoint] {
        let arrayOfBlockPosition = [CGPoint(x: 0, y: 0),
                                    CGPoint(x: 0, y: 0),
                                    CGPoint(x: 0, y: 0),
                                    CGPoint(x: size.width / 2, y: size.height / 1.9),
                                    CGPoint(x: size.width / 4.5, y: size.height / 2.2),
                                    CGPoint(x: 0, y: 0),
                                    CGPoint(x: 0, y: 0),
                                    CGPoint(x: size.width / 1.3, y: size.height / 3),
                                    CGPoint(x: size.width / 1.6, y: size.height / 3),
                                    CGPoint(x: size.width / 2, y: size.height / 3.5),
                                    CGPoint(x: size.width / 2, y: size.height / 2.5),
                                    CGPoint(x: size.width / 3.5, y: size.height / 3)]
        return arrayOfBlockPosition
    }
    
    func returnBlockSize() -> [CGSize] {
        let arrayOfBlockSize = [CGSize(width: size.width / 1.1, height: size.height / 4.5),
                                CGSize(width: size.width / 1.1, height: size.height / 10),
                                CGSize(width: size.width / 1, height: size.height / 3),
                                CGSize(width: size.width / 0.7, height: size.height / 2.5),
                                CGSize(width: size.width / 3, height: size.height / 7),
                                CGSize(width: size.width / 2, height: size.height / 4),
                                CGSize(width: size.width / 3, height: size.height / 6),
                                CGSize(width: size.width / 3, height: size.height / 30),
                                CGSize(width: size.width / 1.6, height: size.height / 8),
                                CGSize(width: size.width / 1.6, height: size.height / 5),
                                CGSize(width: size.width / 1.6, height: size.height / 35),
                                CGSize(width: size.width / 5, height: size.height / 10)]
        return arrayOfBlockSize
    }
    
    func returnSecondBlockSize() -> [CGSize] {
        let arrayOfBlockSize = [CGSize(width: 0, height: 0),
                                CGSize(width: 0, height: 0),
                                CGSize(width: 0, height: 0),
                                CGSize(width: size.width / 2, height: size.height / 57),
                                CGSize(width: size.width / 3, height: size.height / 7),
                                CGSize(width: 0, height: 0),
                                CGSize(width: 0, height: 0),
                                CGSize(width: size.width / 3, height: size.height / 30),
                                CGSize(width: size.width / 1.6, height: size.height / 8),
                                CGSize(width: size.width / 3, height: size.height / 7),
                                CGSize(width: size.width / 3, height: size.height / 7),
                                CGSize(width: size.width / 4, height: size.height / 8)]
        return arrayOfBlockSize
    }
    
    
    func returnBallPosition() -> [[CGPoint]] {
        let arrayOfBallPosition = [[CGPoint(x: size.width / 1.4, y: size.height / 1.91),
                                    CGPoint(x: size.width / 1.1, y: size.height / 2.53),
                                    CGPoint(x: size.width / 3.5, y: size.height / 1.7),
                                    CGPoint(x: size.width / 2, y: size.height / 1.7),
                                    CGPoint(x: size.width / 3.5, y: size.height / 1.8),
                                    CGPoint(x: size.width / 5.5, y: size.height / 1.7),
                                    CGPoint(x: size.width / 1.7, y: size.height / 1.7),
                                    CGPoint(x: size.width / 4.5, y: size.height / 1.57),
                                    CGPoint(x: size.width / 5, y: size.height / 1.46),
                                    CGPoint(x: size.width / 5, y: size.height / 1.52),
                                    CGPoint(x: size.width / 3, y: size.height / 1.8),
                                    CGPoint(x: size.width / 1.4, y: size.height / 1.6)],
                                   
                                   [CGPoint(x: size.width / 3.5, y: size.height / 1.91),
                                    CGPoint(x: size.width / 3.5, y: size.height / 2.15),
                                    CGPoint(x: size.width / 1.4, y: size.height / 1.7),
                                    CGPoint(x: size.width / 2, y: size.height / 3),
                                    CGPoint(x: size.width / 1.3, y: size.height / 1.6),
                                    CGPoint(x: size.width / 1.2, y: size.height / 1.7),
                                    CGPoint(x: size.width / 1.2, y: size.height / 1.7),
                                    CGPoint(x: size.width / 1.3, y: size.height / 2.6),
                                    CGPoint(x: size.width / 2.3, y: size.height / 2.95),
                                    CGPoint(x: size.width / 1.25, y: size.height / 2.5),
                                    CGPoint(x: size.width / 1.45, y: size.height / 1.8),
                                    CGPoint(x: size.width / 1.15, y: size.height / 3)]]
        return arrayOfBallPosition
    }
    
    override func update(_ currentTime: TimeInterval) {
        if !isNodeOnScreen(node: firstBall) {
            game?.isLose = true
        }
        
        if !isNodeOnScreen(node: secondBall) {
            game?.isLose = true
        }
    }
    
    func isNodeOnScreen(node: SKSpriteNode) -> Bool {
        let sceneSize = self.size
        let nodeHeight = node.size.height
        let nodePositionY = node.position.y

        return (nodePositionY + nodeHeight / 2 > 0) && (nodePositionY - nodeHeight / 2 < sceneSize.height)
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.updateTimer()
        }
    }
    
    func updateTimer() {
        if game?.timeLeft ?? 0 > 0 {
            game?.timeLeft -= 1
            timeLabel.text = "\(String(describing: game!.timeLeft / 60)):\(String(describing: game!.timeLeft % 60))"
        } else {
            game?.isLose = true
            timer?.invalidate()
        }
    }
    
    func setupView() {
        let background = SKSpriteNode(imageNamed: ImageName.gameBackgroundImage.rawValue)
        background.size = CGSize(width: size.width, height: size.height)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(background)
        
        let texture = SKTexture(imageNamed: arrayOfImagesBlock[currentIndex])
        let block = SKSpriteNode(texture: texture)
        block.size =  returnBlockSize()[currentIndex]
        block.position = returnBlockPosition()[currentIndex]
        block.physicsBody = SKPhysicsBody(texture: texture, size: block.size)
        block.physicsBody?.affectedByGravity = false
        block.physicsBody?.isDynamic = false
        block.physicsBody?.usesPreciseCollisionDetection = true
        addChild(block)
        
        let secondTexture = SKTexture(imageNamed: arrayOfImagesSecondBlock[currentIndex])
        let secondBlock = SKSpriteNode(texture: secondTexture)
        secondBlock.size = returnSecondBlockSize()[currentIndex]
        secondBlock.position = returnSecondBlockPosition()[currentIndex]
        secondBlock.physicsBody = SKPhysicsBody(texture: secondTexture, size: secondBlock.size)
        secondBlock.physicsBody?.affectedByGravity = false
        secondBlock.physicsBody?.isDynamic = false
        secondBlock.physicsBody?.usesPreciseCollisionDetection = true
        addChild(secondBlock)
        
        firstBall = Ball(texture: SKTexture(imageNamed: ImageName.ball1.rawValue),
                         position: returnBallPosition().first![currentIndex],
                         categoryBitMask: CBitMask.ball,
                         contactTestBitMask: CBitMask.ball,
                         size: 50)
        addChild(firstBall)
        
        secondBall = Ball(texture: SKTexture(imageNamed: ImageName.ball1.rawValue),
                          position: returnBallPosition().last![currentIndex],
                          categoryBitMask: CBitMask.ball,
                          contactTestBitMask: CBitMask.ball,
                          size: 50)
        addChild(secondBall)
        
        let pauseBackButton = SKSpriteNode(imageNamed: ImageName.circleButtonImage.rawValue)
        pauseBackButton.size = CGSize(width: size.width / 6.5, height: size.height / 14)
        pauseBackButton.name = "pauseBack"
        pauseBackButton.position = CGPoint(x: size.width / 8.1, y: size.height / 1.12)
        addChild(pauseBackButton)
        
        let pauseButton = SKSpriteNode(imageNamed: ImageName.pause.rawValue)
        pauseButton.size = CGSize(width: size.width / 17.5, height: size.height / 30)
        pauseButton.name = "pause"
        pauseButton.position = CGPoint(x: size.width / 8.1, y: size.height / 1.12)
        addChild(pauseButton)
        
        let pauseLabel = SKLabelNode(fontNamed: "SecularOne-Regular")
        pauseLabel.text = "pause"
        pauseLabel.fontSize = 18
        pauseLabel.position = CGPoint(x: size.width / 8.1, y: size.height / 1.165)
        pauseLabel.fontColor = .red
        addChild(pauseLabel)
        
        let restartBackButton = SKSpriteNode(imageNamed: ImageName.circleButtonImage.rawValue)
        restartBackButton.size = CGSize(width: size.width / 6.5, height: size.height / 14)
        restartBackButton.name = "restartBackButton"
        restartBackButton.position = CGPoint(x: size.width / 1.15, y: size.height / 1.12)
        addChild(restartBackButton)
        
        let restartButton = SKSpriteNode(imageNamed: ImageName.restart.rawValue)
        restartButton.name = "restartButton"
        restartButton.size = CGSize(width: size.width / 12.5, height: size.height / 25)
        restartButton.position = CGPoint(x: size.width / 1.15, y: size.height / 1.12)
        addChild(restartButton)
        
        let restartLabel = SKLabelNode(fontNamed: "SecularOne-Regular")
        restartLabel.text = "restart"
        restartLabel.fontSize = 18
        restartLabel.position = CGPoint(x: size.width / 1.15, y: size.height / 1.165)
        restartLabel.fontColor = .red
        addChild(restartLabel)
        
        let levelLabel = SKLabelNode(fontNamed: "SecularOne-Regular")
        levelLabel.text = "LEVEL \(currentIndex + 1)"
        levelLabel.fontSize = 44
        levelLabel.position = CGPoint(x: size.width / 2, y: size.height / 1.265)
        levelLabel.fontColor = .yellow
        addChild(levelLabel)
        
        let backLineImage = SKSpriteNode(imageNamed: ImageName.backForTimeLine.rawValue)
        backLineImage.size = CGSize(width: size.width / 1.3, height: size.height / 11)
        backLineImage.position = CGPoint(x: size.width / 2, y: size.height / 1.35)
        addChild(backLineImage)
        
        lineImage = SKSpriteNode(imageNamed: ImageName.timeLine.rawValue)
        lineImage.size = CGSize(width: size.width / 1.3, height: size.height / 8)
        lineImage.position = CGPoint(x: size.width / 2, y: size.height / 1.35)
        addChild(lineImage)
        
        let firstStar = SKSpriteNode(imageNamed: ImageName.fullStar.rawValue)
        firstStar.size = CGSize(width: size.width / 12.3, height: size.height / 27)
        firstStar.position = CGPoint(x: size.width / 3.7, y: size.height / 1.34)
        addChild(firstStar)
        
        let secondStar = SKSpriteNode(imageNamed: ImageName.fullStar.rawValue)
        secondStar.size = CGSize(width: size.width / 12.3, height: size.height / 27)
        secondStar.position = CGPoint(x: size.width / 2.2, y: size.height / 1.34)
        addChild(secondStar)
        
        let thirdStar = SKSpriteNode(imageNamed: ImageName.fullStar.rawValue)
        thirdStar.size = CGSize(width: size.width / 12.3, height: size.height / 27)
        thirdStar.position = CGPoint(x: size.width / 1.6, y: size.height / 1.34)
        addChild(thirdStar)
        
        
        
        let timeBackButton = SKSpriteNode(imageNamed: ImageName.backForTime.rawValue)
        timeBackButton.size = CGSize(width: size.width / 3.1, height: size.width / 8)
        timeBackButton.position = CGPoint(x: size.width / 2, y: size.height / 7)
        addChild(timeBackButton)
        
        let time = SKSpriteNode(imageNamed: ImageName.time.rawValue)
        time.size = CGSize(width: size.width / 9, height: size.width / 5)
        time.position = CGPoint(x: size.width / 2.7, y: size.height / 7)
        addChild(time)
        
        timeLabel = SKLabelNode(fontNamed: "SecularOne-Regular")
        timeLabel.text = "\(String(describing: game!.timeLeft / 60)):\(String(describing: game!.timeLeft % 60))"
        timeLabel.fontSize = 30
        timeLabel.position = CGPoint(x: size.width / 1.9, y: size.height / 7.7)
        timeLabel.fontColor = .black
        addChild(timeLabel)
    }
    
    func resetScene() {
        removeAllChildren()
        game!.timeLeft = 179
        setupView()
    }
    
    override func didMove(to view: SKView) {
        scene?.size = UIScreen.main.bounds.size
        physicsWorld.contactDelegate = self
        setupView()
        startTimer()
    }
}

