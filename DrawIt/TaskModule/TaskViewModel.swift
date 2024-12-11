import SwiftUI

class TaskViewModel: ObservableObject {
    let contact = TaskModel()
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 180), spacing: -50)]
    @Published var isMenuAvailible = false
    @Published var audioManager = AudioManager()

    func goToMenu() {
        isMenuAvailible = true
        audioManager.playClickSound()
    }
    
    func claim() {
        audioManager.playClickSound()
    }
}
