import SwiftUI

class FirstStageViewModel: ObservableObject {
    let contact = FirstStageModel()
    @Published var isGameAvailible = false
    @Published var audioManager = AudioManager()
    @Published var isStageAvailible = false
    
    func goToStage() {
        isStageAvailible = true
        audioManager.playClickSound()
    }
    
    func goToPlay() {
        isGameAvailible = true
        audioManager.playClickSound()
    }
    
    func setupLevel(index: Int) -> (String, String, Bool) {
        var сarthageLevel: (String, String, Bool) = ("" , "", true)
        let currentLevel = UserDefaultsManager.defaults.object(forKey: Keys.numberOfLevel.rawValue) as! Int
        let arrayOfStarImages = UserDefaultsManager.defaults.object(forKey: Keys.arrayOfStars.rawValue) as! [String]
        if index == currentLevel {
            сarthageLevel = (ImageName.currentLevelBackgroundImage.rawValue,
                             ImageName.clearImage.rawValue,
                             false)
        } else if currentLevel > index {
            сarthageLevel = (ImageName.doneLevelBackgroundImage.rawValue,
                             arrayOfStarImages[index],
                             true)
        } else {
            сarthageLevel = (ImageName.lockedLevelBackgroundImage.rawValue,
                             ImageName.clearImage.rawValue,
                             true)
        }
        return сarthageLevel
    }
}
