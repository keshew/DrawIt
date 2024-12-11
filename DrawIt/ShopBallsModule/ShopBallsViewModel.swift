import SwiftUI

class ShopBallsViewModel: ObservableObject {
    let contact = ShopBallsModel()
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 130), spacing: -30)]
    @Published var isShopAvailible = false
    @Published var audioManager = AudioManager()

    func goToShop() {
        isShopAvailible = true
        audioManager.playClickSound()
    }
    
    func buyBall() {
        audioManager.playClickSound()
    }
}
