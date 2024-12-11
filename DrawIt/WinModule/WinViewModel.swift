import SwiftUI

class WinViewModel: ObservableObject {
    let contact = WinModel()
    @Published var isMenuAvailible = false
    @Published var isLevelAvailible = false
    @Published var isShopAvailible = false
    @Published var audioManager = AudioManager()
    @Published var starImage = UserDefaultsManager.defaults.object(forKey: Keys.arrayOfStars.rawValue) as! [String]
    func goToMenu() {
        isMenuAvailible = true
        UserDefaultsManager().completeLevel()
        audioManager.playClickSound()
    }
    
    func goToLevel() {
        isLevelAvailible = true
        UserDefaultsManager().completeLevel()
        audioManager.playClickSound()
    }
    
    func goToShop() {
        isShopAvailible = true
        UserDefaultsManager().completeLevel()
        audioManager.playClickSound()
    }
}
