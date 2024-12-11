import SwiftUI

class ShopViewModel: ObservableObject {
    let contact = ShopModel()
    @Published var isMenuAvailible = false
    @Published var isShopBallAvailible = false
    @Published var isShopBackgroundsAvailible = false
    @Published var audioManager = AudioManager()
    
    func goToMenu() {
        isMenuAvailible = true
        audioManager.playClickSound()
    }
    
    func goToBallShop() {
        isShopBallAvailible = true
        audioManager.playClickSound()
    }
    
    func goToBackShop() {
        isShopBackgroundsAvailible = true
        audioManager.playClickSound()
    }
}
