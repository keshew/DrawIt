import SwiftUI

struct ShopView: View {
    @StateObject var shopModel =  ShopViewModel()
    
    var body: some View {
        ZStack {
            Image(ImageName.menuBackground.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 30) {
                    HStack {
                        CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                     text: "back",
                                     action: shopModel.goToMenu,
                                     sizeBack: 64,
                                     sizeForward: 44,
                                     offsetXtForImage: 0,
                                     offsetYtForImage: 0)
                        .padding(.leading)
                        Spacer()
                        Text("SHOP")
                            .Secular(size: 54, color: .yellow)
                            .outlineText(color: .red, width: 1)
                            .offset(x: -30)
                        Spacer()
                    }
                    
                    MoneyView(text: "\(UserDefaultsManager.defaults.object(forKey: Keys.countOfMoney.rawValue) ?? 0)")
                    
                    VStack(spacing: 50) {
                        ShopItem(action: shopModel.goToBallShop,
                                 foregroundImage: ImageName.ballsSetImage.rawValue,
                                 text: ImageName.ballsTextImage.rawValue,
                                 sizeHImage: 155,
                                 sizeWImage: 193,
                                 sizeHText: 67,
                                 sizeWText: 178)
                        
                        ShopItem(action: shopModel.goToBackShop,
                                 foregroundImage: ImageName.backgroundsSetImage.rawValue,
                                 text: ImageName.backgroundsTextImage.rawValue,
                                 sizeHImage: 202,
                                 sizeWImage: 267,
                                 sizeHText: 68,
                                 sizeWText: 302)
                    }
                    Spacer()
                }
            }
            .navigationDestination(isPresented: $shopModel.isMenuAvailible) {
                MenuView()
            }
            
            .navigationDestination(isPresented: $shopModel.isShopBallAvailible) {
                ShopBallsView()
            }
            
            .navigationDestination(isPresented: $shopModel.isShopBackgroundsAvailible) {
                ShopBackgroundsView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ShopView()
}

