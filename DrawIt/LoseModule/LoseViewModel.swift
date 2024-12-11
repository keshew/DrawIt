import SwiftUI

class LoseViewModel: ObservableObject {
    let contact = LoseModel()
    @Published var isMenuAvailible = false
    @Published var isRestartAvailible = false
    @Published var isShopAvailible = false
    @Published var audioManager = AudioManager()

    func goToMenu() {
        isMenuAvailible = true
        audioManager.playClickSound()
    }
    
    func goToShop() {
        isShopAvailible = true
        audioManager.playClickSound()
    }
    
    func goToRestart() {
        isRestartAvailible = true
        audioManager.playClickSound()
    }
}
