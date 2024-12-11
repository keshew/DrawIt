import SwiftUI

struct PauseView: View {
    @StateObject var pauseModel =  PauseViewModel()

    var body: some View {
        ZStack {
            Image(ImageName.menuBackground.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            Image(ImageName.stageImage1.rawValue)
                .resizable()
                .frame(minWidth: 252, maxWidth: 252, minHeight: 252, maxHeight: 252)
                .offset(y: 235)
            
            VStack(spacing: 50) {
                Text("PAUSE")
                    .Secular(size: 50, color: Color(#colorLiteral(red: 105/255, green: 105/255, blue: 105/255, alpha: 1)))
                    .outlineText(color: .black, width: 0.5)
                
                Text("GAME PAUSED")
                    .Secular(size: 22, color: .white)
                    .outlineText(color: .black, width: 0.5)
                    
                VStack(spacing: 15) {
                    CircleButton(foregroundImage: ImageName.playButton.rawValue,
                                 text: "reusme",
                                 action: pauseModel.resume,
                                 sizeBack: 121,
                                 sizeForward: 54,
                                 offsetXtForImage: 5,
                                 offsetXtForText: 40,
                                 sizeForText: 28,
                                 widthForOutline: 0.8)
                    
                    
                    HStack(spacing: 40) {
                        SquareButton(foregroundImage: ImageName.restart.rawValue,
                                     sizeH: 65,
                                     sizeW: 65,
                                     text: "restart",
                                     action: pauseModel.goToRestart)
                        
                        SquareButton(foregroundImage: ImageName.homeImage.rawValue,
                                     sizeH: 80,
                                     sizeW: 80,
                                     text: "menu",
                                     action: pauseModel.goToMenu)
                        
                    }
                }
                Spacer()
            }
            .navigationDestination(isPresented: $pauseModel.isMenuAvailible) {
                MenuView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PauseView()
}

