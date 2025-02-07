import SwiftUI

struct MenuView: View {
    @StateObject var menuModel =  MenuViewModel()
    
    var body: some View {
            ZStack {
                Image(ImageName.menuBackground.rawValue)
                    .resizable()
                    .ignoresSafeArea()
                ScrollView {
                VStack {
                    HStack {
                        SoundButton(foregroundImage: ImageName.soundsOnImage.rawValue,
                                    text: "sound",
                                    action: menuModel.toggleSound,
                                    isOff: menuModel.isOff)
                        Spacer()
                        CircleButton(foregroundImage: ImageName.exitImage.rawValue,
                                     text: "exit",
                                     action: menuModel.exitGame,
                                     sizeBack: 64,
                                     sizeForward: 38,
                                     offsetXtForImage: 0,
                                     offsetYtForImage: -3)
                    }
                    .padding()
                    
                    MoneyView(text: "\(UserDefaultsManager.defaults.object(forKey: Keys.countOfMoney.rawValue) ?? 0)")
                    
                    HStack(spacing: 50) {
                        SquareButton(foregroundImage: ImageName.tasksImage.rawValue,
                                     sizeH: 77,
                                     sizeW: 78,
                                     text: "tasks",
                                     action: menuModel.goToTask)
                        
                        SquareButton(foregroundImage: ImageName.shopImage.rawValue,
                                     sizeH: 65,
                                     sizeW: 75,
                                     text: "shop",
                                     action: menuModel.goToShop)
                    }
                    .padding()
                    
                    PlayButton(action: menuModel.goToPlay)
                    
                    Image(ImageName.lizaImage.rawValue)
                        .resizable()
                        .frame(minWidth: 250, maxWidth: 290, minHeight: 270, maxHeight: 370)
                        .offset(y: 35)
                }
            }
        }
            
            .navigationDestination(isPresented: $menuModel.isShopAvailible) {
                ShopView()
            }
            
            .navigationDestination(isPresented: $menuModel.isTaskAvailible) {
                TaskView()
            }
            
            .navigationDestination(isPresented: $menuModel.isPlayAvailible) {
                StageView()
            }
            
      
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MenuView()
}

