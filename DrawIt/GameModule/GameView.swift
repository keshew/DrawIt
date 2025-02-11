import SwiftUI
import SpriteKit

struct GameView: View {
    @StateObject var gameModel =  GameViewModel()
    @StateObject private var gameData = GameData()
    
    var body: some View {
        ZStack {
            SpriteView(scene: gameModel.createGameScene(gameData: gameData))
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
            
                .navigationDestination(isPresented: $gameData.isLose) {
                    LoseView()
                }
            
                .navigationDestination(isPresented: $gameData.isWin) {
                    WinView()
                }
            
            if gameData.isPause {
                PauseView(gameData: gameData)
            }
        }
    }
}

#Preview {
    GameView()
}

