import SwiftUI

struct SecondStageView: View {
    @StateObject var secondStageModel =  SecondStageViewModel()

    var body: some View {
        ZStack {
            Image(ImageName.secondStageBackgroundImage.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                 text: "back",
                                 action: secondStageModel.goToStage,
                                 sizeBack: 64,
                                 sizeForward: 44,
                                 offsetXtForImage: 0,
                                 offsetYtForImage: 0)
                    .padding(.leading)
                    Spacer()
                }
                
                Image(ImageName.titleStage2.rawValue)
                    .resizable()
                    .frame(width: 288, height: 148)
                    .offset(y: -50)

                Spacer()
            }
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "1",
                        offsetX: 60,
                        offsetY: UIScreen.main.bounds.height / 2.35,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "2",
                        offsetX: 15,
                        offsetY: UIScreen.main.bounds.height / 2.9,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "3",
                        offsetX: -60,
                        offsetY: UIScreen.main.bounds.height / 3.2,
                        sizeImage: 73)

            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "4",
                        offsetX: -20,
                        offsetY: UIScreen.main.bounds.height / 4.3,
                        sizeImage: 73)

            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "5",
                        offsetX: -90,
                        offsetY: UIScreen.main.bounds.height / 5.3,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "6",
                        offsetX: -20,
                        offsetY: UIScreen.main.bounds.height / 7.8,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "7",
                        offsetX: -95,
                        offsetY: UIScreen.main.bounds.height / 13,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "8",
                        offsetX: -25,
                        offsetY: UIScreen.main.bounds.height / 35,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "9",
                        offsetX: -80,
                        offsetY: UIScreen.main.bounds.height / -25,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "10",
                        offsetX: 0,
                        offsetY: UIScreen.main.bounds.height / -12,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "11",
                        offsetX: 60,
                        offsetY: UIScreen.main.bounds.height / -7,
                        sizeImage: 73)
            
            LevelButton(action: secondStageModel.goToMenu,
                        imageOfLevel: ImageName.levelButtonWithLock.rawValue,
                        text: "12",
                        offsetX: -25,
                        offsetY: UIScreen.main.bounds.height / -5.1,
                        sizeImage: 107)
            
            .navigationDestination(isPresented: $secondStageModel.isStageAvailible) {
                StageView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SecondStageView()
}

