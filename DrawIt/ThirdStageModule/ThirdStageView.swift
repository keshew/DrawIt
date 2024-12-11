import SwiftUI

struct ThirdStageView: View {
    @StateObject var thirdStageModel =  ThirdStageViewModel()
    var body: some View {
        ZStack {
            Image(ImageName.thirdStageBackgroundImage.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                 text: "back",
                                 action: thirdStageModel.goToStage,
                                 sizeBack: 64,
                                 sizeForward: 44,
                                 offsetXtForImage: 0,
                                 offsetYtForImage: 0)
                    .padding(.leading)
                    Spacer()
                }
                
                Image(ImageName.titleStage3.rawValue)
                    .resizable()
                    .frame(width: 326, height: 154)
                    .offset(y: -50)

                Spacer()
            }
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "1",
                        offsetX: -85,
                        offsetY: UIScreen.main.bounds.height / 2.4,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "2",
                        offsetX: -5,
                        offsetY: UIScreen.main.bounds.height / 2.5,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "3",
                        offsetX: 75,
                        offsetY: UIScreen.main.bounds.height / 2.6,
                        sizeImage: 73)

            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "4",
                        offsetX: 145,
                        offsetY: UIScreen.main.bounds.height / 3,
                        sizeImage: 73)

            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "5",
                        offsetX: 155,
                        offsetY: UIScreen.main.bounds.height / 4.15,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "6",
                        offsetX: 80,
                        offsetY: UIScreen.main.bounds.height / 4.8,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "7",
                        offsetX: -5,
                        offsetY: UIScreen.main.bounds.height / 5,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "8",
                        offsetX: -82,
                        offsetY: UIScreen.main.bounds.height / 5.4,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "9",
                        offsetX: -82,
                        offsetY: UIScreen.main.bounds.height / 11,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "10",
                        offsetX: -2,
                        offsetY: UIScreen.main.bounds.height / 14,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "11",
                        offsetX: 80,
                        offsetY: UIScreen.main.bounds.height / 17,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "12",
                        offsetX: 130,
                        offsetY: UIScreen.main.bounds.height / -55,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "13",
                        offsetX: 75,
                        offsetY: UIScreen.main.bounds.height / -12,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "14",
                        offsetX: 15,
                        offsetY: UIScreen.main.bounds.height / -7,
                        sizeImage: 73)
            
            LevelButton(action: thirdStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "15",
                        offsetX: -80,
                        offsetY: UIScreen.main.bounds.height / -5.5,
                        sizeImage: 109)
            
            .navigationDestination(isPresented: $thirdStageModel.isStageAvailible) {
                StageView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ThirdStageView()
}

