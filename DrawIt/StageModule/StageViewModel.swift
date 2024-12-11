import SwiftUI

class StageViewModel: ObservableObject {
    let contact = StageModel()
    @Published var isMenuAvailible = false
    @Published var isFirstStageAvailible = false
    @Published var isSecondStageAvailible = false
    @Published var isThirdStageAvailible = false
    @Published var currentIndex = 0
    @Published var audioManager = AudioManager()
    
    func increaseIndex() {
        if currentIndex <= 3 {
            currentIndex += 1
        }
        audioManager.playClickSound()
    }
    
    func lowerIndex() {
        if currentIndex >= 1 {
            currentIndex -= 1
        }
        audioManager.playClickSound()
    }

    func goToMenu() {
        isMenuAvailible = true
        audioManager.playClickSound()
    }
    
    func goToPlay() {
        audioManager.playClickSound()
        if currentIndex == 0 {
            isFirstStageAvailible = true
        } else if currentIndex == 1 {
            isSecondStageAvailible = true
        } else if currentIndex == 2 {
            isThirdStageAvailible = true
        }
    }
}
