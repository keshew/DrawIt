import SwiftUI

class GameData: ObservableObject {
    @Published var isLose = false
    @Published var isWin = false
    @Published var isPause = false
    @Published var timeLeft = 120
}
