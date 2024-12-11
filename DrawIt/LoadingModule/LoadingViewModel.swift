import SwiftUI

class LoadingViewModel: ObservableObject {
    let contact = LoadingModel()
    @Published var isMenuAvailible = false
    @Published var currentIndex = 0
    @Published var timer: Timer?
    @Published var currentText = ""
    @Published var index = 2
    
    func goToMenu() {
        isMenuAvailible = true
    }
    
    func loadScreen() -> (String, CGFloat, String) {
        return (contact.arrayOfImages[currentIndex], contact.arrayXOffset[currentIndex], contact.arrayOfText[currentIndex])
    }
    
    func startTimer() {
         timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
             self.changeText()
         }
     }
    
    func changeText() {
        index -= 1
        if index == -1 {
            index = 2
        }
        currentText = contact.arrayOfText[index]
     }
}
