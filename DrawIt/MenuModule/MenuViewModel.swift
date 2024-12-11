import SwiftUI
import AVFoundation

class MenuViewModel: ObservableObject {
    let contact = MenuModel()
    @Published var isShopAvailible = false
    @Published var isTaskAvailible = false
    @Published var isPlayAvailible = false
    @Published var isOff = true
    @Published var audioManager = AudioManager()
    
    func toggleSound() {
        isOff.toggle()
//        if isOff {
//            audioManager.playBackgroundMusic()
//            saveMusicState(isPlaying: true)
//        } else {
//            audioManager.stopBackgroundMusic()
//            saveMusicState(isPlaying: false)
//            
//        }
    }
    
    func goToTask() {
        isTaskAvailible = true
        audioManager.playClickSound()
    }
    
    func goToShop() {
        isShopAvailible = true
        audioManager.playClickSound()
    }
    
    func goToPlay() {
        isPlayAvailible = true
        audioManager.playClickSound()
    }
    
    func exitGame() {
        audioManager.playClickSound()
    }
    
//    func saveMusicState(isPlaying: Bool) {
//        UserDefaultsManager.defaults.set(isPlaying, forKey: Keys.isOn.rawValue)
//     }
}
