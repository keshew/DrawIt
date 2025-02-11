import SwiftUI

class PauseViewModel: ObservableObject {
    let contact = PauseModel()
    @Published var isMenuAvailible = false
    @Published var isGameAvailible = false
    @Published var audioManager = AudioManager()

    func goToMenu() {
        isMenuAvailible = true
        audioManager.playClickSound()
    }
    
    func goToRestart() {
        audioManager.playClickSound()
        isGameAvailible = true
    }
    
    func resume() {
        audioManager.playClickSound()
    }
}
