import AVFoundation
import SwiftUI

class AudioManager: ObservableObject {
    var backgroundPlayer: AVAudioPlayer?
    var clickPlayer: AVAudioPlayer?
    var losePlayer: AVAudioPlayer?
    var winPlayer: AVAudioPlayer?
    var drawPlayer: AVAudioPlayer?
    
    init() {
        loadBackgroundMusic()
        loadClickSound()
        loadWinMusic()
        loadLoseMusic()
        loadDrawMusic()
    }
    
    private func loadBackgroundMusic() {
        if let url = Bundle.main.url(forResource: "music", withExtension: "mp3") {
            do {
                backgroundPlayer = try AVAudioPlayer(contentsOf: url)
                backgroundPlayer?.numberOfLoops = -1
                backgroundPlayer?.prepareToPlay()
            } catch {
                print("Ошибка \(error)")
            }
        }
    }
    
    private func loadLoseMusic() {
        if let url = Bundle.main.url(forResource: "gameOver", withExtension: "mp3") {
            do {
                losePlayer = try AVAudioPlayer(contentsOf: url)
                losePlayer?.prepareToPlay()
            } catch {
                print("Ошибка \(error)")
            }
        }
    }
    
    private func loadWinMusic() {
        if let url = Bundle.main.url(forResource: "victory", withExtension: "wav") {
            do {
                winPlayer = try AVAudioPlayer(contentsOf: url)
                winPlayer?.prepareToPlay()
            } catch {
                print("Ошибка \(error)")
            }
        }
    }
    
    private func loadDrawMusic() {
        if let url = Bundle.main.url(forResource: "draw", withExtension: "wav") {
            do {
                drawPlayer = try AVAudioPlayer(contentsOf: url)
                drawPlayer?.prepareToPlay()
            } catch {
                print("Ошибка \(error)")
            }
        }
    }
    
    private func loadClickSound() {
        if let url = Bundle.main.url(forResource: "click", withExtension: "wav") {
            do {
                clickPlayer = try AVAudioPlayer(contentsOf: url)
                clickPlayer?.prepareToPlay()
            } catch {
                print("Ошибка \(error)")
            }
        }
    }
    
    func playBackgroundMusic() {
        backgroundPlayer?.play()
    }
    
    func stopBackgroundMusic() {
        backgroundPlayer?.stop()
    }
    
    func playClickSound() {
        clickPlayer?.play()
    }
    
    func playLoseMusic() {
        losePlayer?.play()
    }
    
    func stopLoseMusic() {
        losePlayer?.stop()
    }
    
    func playWinMusic() {
        winPlayer?.play()
    }
    
    func stopWinMusic() {
        winPlayer?.stop()
    }
    
    func playDrawSound() {
        drawPlayer?.play()
    }
    
    func stopDrawSounds() {
        drawPlayer?.stop()
    }
}
