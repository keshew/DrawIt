import SwiftUI

class ShopBackgroundsViewModel: ObservableObject {
    let contact = ShopBackgroundsModel()
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 180), spacing: -50)]
    @Published var isShopAvailible = false
    @Published var audioManager = AudioManager()

    func goToShop() {
        isShopAvailible = true
        audioManager.playClickSound()
    }
    
    func buyBack() {
        audioManager.playClickSound()
    }
}
