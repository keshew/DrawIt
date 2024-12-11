import SwiftUI

class PauseViewModel: ObservableObject {
    let contact = PauseModel()
    @Published var isMenuAvailible = false
    @Published var audioManager = AudioManager()

    func goToMenu() {
        isMenuAvailible = true
        audioManager.playClickSound()
    }
    
    func goToRestart() {
        audioManager.playClickSound()
    }
    
    func resume() {
        audioManager.playClickSound()
    }
}
