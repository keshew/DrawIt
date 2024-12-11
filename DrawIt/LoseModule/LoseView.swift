import SwiftUI

struct LoseView: View {
    @StateObject var loseModel =  LoseViewModel()

    var body: some View {
        ZStack {
            Image(ImageName.menuBackground.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            Image(ImageName.loseLiza.rawValue)
                .resizable()
                .frame(minWidth: 350, maxWidth: 350, minHeight: 250, maxHeight: 320)
                .offset(y: 255)
            
            VStack(spacing: 30) {
                Text("DEFEAT!")
                    .Secular(size: 50, color: Color(#colorLiteral(red: 142/255, green: 63/255, blue: 62/255, alpha: 1)))
                    .outlineText(color: .black, width: 0.5)
                
                Text("DON'T WORRY ABOUT IT,  DO IT AGAIN...")
                    .Secular(size: 22, color: .white)
                    .outlineText(color: .black, width: 0.5)
                    .frame(width: 260)
                    .multilineTextAlignment(.center)
                    
                    CircleButton(foregroundImage: ImageName.restart.rawValue,
                                 text: "restart",
                                 action: loseModel.goToRestart,
                                 sizeBack: 121,
                                 sizeForward: 66,
                                 offsetXtForText: 40,
                                 sizeForText: 28,
                                 widthForOutline: 0.8)
                    HStack(spacing: 40) {
                        SquareButton(foregroundImage: ImageName.homeImage.rawValue,
                                     sizeH: 80,
                                     sizeW: 80,
                                     text: "menu",
                                     action: loseModel.goToMenu)
                        
                        SquareButton(foregroundImage: ImageName.shopImage.rawValue,
                                     sizeH: 65,
                                     sizeW: 75,
                                     text: "shop",
                                     action: loseModel.goToShop)
                    }
                Spacer()
            }
            .onAppear {
                loseModel.audioManager.playLoseMusic()    
            }
            
            .onDisappear() {
                loseModel.audioManager.stopLoseMusic()
            }
            
            .navigationDestination(isPresented: $loseModel.isMenuAvailible) {
                MenuView()
            }
            
            .navigationDestination(isPresented: $loseModel.isShopAvailible) {
                ShopView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LoseView()
}

