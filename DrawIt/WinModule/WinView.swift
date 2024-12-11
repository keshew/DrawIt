import SwiftUI

struct WinView: View {
    @StateObject var winModel =  WinViewModel()

    var body: some View {
        ZStack {
            Image(ImageName.menuBackground.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            Image(ImageName.winSolar.rawValue)
                .resizable()
                .frame(height: 400)
                .offset(y: 215)
            
            Image(ImageName.lizaImage.rawValue)
                .resizable()
                .frame(minWidth: 350, maxWidth: 350, minHeight: 250, maxHeight: 320)
                .offset(y: 255)
            
            VStack {
                Text("PERFECT!")
                    .Secular(size: 50, color: Color(#colorLiteral(red: 85/255, green: 142/255, blue: 65/255, alpha: 1)))
                    .outlineText(color: .black, width: 0.5)
                
                Text("LEVEL SUCCESSFULLY PASSED))")
                    .Secular(size: 22, color: .white)
                    .outlineText(color: .black, width: 0.5)
                    .frame(width: 250)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 20) {
                    Image(winModel.starImage.last!)
                        .resizable()
                        .frame(width: 150, height: 75)
                    
                    MoneyView(text: "+50")
                }
                
                VStack {
                    CircleButton(foregroundImage: ImageName.forwardArrowImage.rawValue,
                                 text: "next",
                                 action: winModel.goToLevel,
                                 sizeBack: 121,
                                 sizeForward: 90,
                                 offsetXtForText: 40,
                                 sizeForText: 28,
                                 widthForOutline: 0.8)
                    HStack(spacing: 40) {
                        SquareButton(foregroundImage: ImageName.homeImage.rawValue,
                                     sizeH: 80,
                                     sizeW: 80,
                                     text: "menu",
                                     action: winModel.goToMenu)
                        
                        SquareButton(foregroundImage: ImageName.shopImage.rawValue,
                                     sizeH: 65,
                                     sizeW: 75,
                                     text: "shop",
                                     action: winModel.goToShop)
                    }
                }
                Spacer()
            }
            .onAppear {
                winModel.audioManager.playWinMusic()
            }
            
            .onDisappear() {
                winModel.audioManager.stopWinMusic()
            }
            
            .navigationDestination(isPresented: $winModel.isMenuAvailible) {
                MenuView()
            }
            
            .navigationDestination(isPresented: $winModel.isShopAvailible) {
                ShopView()
            }
            
            .navigationDestination(isPresented: $winModel.isLevelAvailible) {
                FirstStageView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    WinView()
}

