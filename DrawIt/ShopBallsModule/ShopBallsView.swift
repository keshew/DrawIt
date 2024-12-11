import SwiftUI

struct ShopBallsView: View {
    @StateObject var shopBallsModel =  ShopBallsViewModel()
    
    var body: some View {
        ZStack {
            Image(ImageName.menuBackground.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                HStack {
                    CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                 text: "back",
                                 action: shopBallsModel.goToShop,
                                 sizeBack: 64,
                                 sizeForward: 44,
                                 offsetXtForImage: 0,
                                 offsetYtForImage: 0)
                    .padding(.leading)
                    Spacer()
                    
                    VStack(spacing: -25) {
                        Text("SHOP")
                            .Secular(size: 54, color: .yellow)
                            .outlineText(color: .red, width: 1)
                        .offset(x: -30)
                        
                        Text("BALLS")
                            .Secular(size: 34, color: .yellow)
                            .outlineText(color: .red, width: 1)
                            .offset(x: -30)
                    }
                    .offset(y: 10)
                    
                    Spacer()
                }
                
                MoneyView(text: "\(UserDefaultsManager.defaults.object(forKey: Keys.countOfMoney.rawValue) ?? 0)")
                
                ScrollBallsBackgrounds(action: shopBallsModel.buyBall,
                                       columns: shopBallsModel.columns,
                                       imageArray: shopBallsModel.contact.ballsAray)
            }
            .navigationDestination(isPresented: $shopBallsModel.isShopAvailible) {
                ShopView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ShopBallsView()
}

