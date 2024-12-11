import SwiftUI

struct FirstStageView: View {
    @StateObject var firstStageModel =  FirstStageViewModel()
    
    var body: some View {
        ZStack {
            Image(ImageName.firstStageBackgroundImage.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                 text: "back",
                                 action: firstStageModel.goToStage,
                                 sizeBack: 64,
                                 sizeForward: 44,
                                 offsetXtForImage: 0,
                                 offsetYtForImage: 0)
                    .padding(.leading)
                    Spacer()
                }
                
                Image(ImageName.titleStage1.rawValue)
                    .resizable()
                    .frame(width: 270, height: 146)
                    .offset(y: -50)

                Spacer()
            }
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 1).0,
                        starImage: firstStageModel.setupLevel(index: 1).1,
                        text: "1",
                        offsetX: -90,
                        offsetY: UIScreen.main.bounds.height / 2.5,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 1).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 2).0,
                        starImage: firstStageModel.setupLevel(index: 2).1,
                        text: "2",
                        offsetX: 15,
                        offsetY: UIScreen.main.bounds.height / 2.8,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 2).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 3).0,
                        starImage: firstStageModel.setupLevel(index: 3).1,
                        text: "3",
                        offsetX: -25,
                        offsetY: UIScreen.main.bounds.height / 4.0,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 3).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 4).0,
                        starImage: firstStageModel.setupLevel(index: 4).1,
                        text: "4",
                        offsetX: -45,
                        offsetY: UIScreen.main.bounds.height / 7,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 4).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 5).0,
                        starImage: firstStageModel.setupLevel(index: 5).1,
                        text: "5",
                        offsetX: 35,
                        offsetY: UIScreen.main.bounds.height / 15,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 5).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 6).0,
                        starImage: firstStageModel.setupLevel(index: 6).1,
                        text: "6",
                        offsetX: -65,
                        offsetY: UIScreen.main.bounds.height / 65,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 6).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 7).0,
                        starImage: firstStageModel.setupLevel(index: 7).1,
                        text: "7",
                        offsetX: 15,
                        offsetY: UIScreen.main.bounds.height / -17,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 7).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 8).0,
                        starImage: firstStageModel.setupLevel(index: 8).1,
                        text: "8",
                        offsetX: -65,
                        offsetY: UIScreen.main.bounds.height / -7,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 8).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 9).0,
                        starImage: firstStageModel.setupLevel(index: 9).1,
                        text: "9",
                        offsetX: 25,
                        offsetY: UIScreen.main.bounds.height / -5.5,
                        sizeImage: 83)
            .disabled(firstStageModel.setupLevel(index: 9).2)
            
            LevelButton(action: firstStageModel.goToPlay,
                        imageOfLevel: firstStageModel.setupLevel(index: 10).0,
                        starImage: firstStageModel.setupLevel(index: 10).1,
                        text: "10",
                        offsetX: 130,
                        offsetY: UIScreen.main.bounds.height / -5.5,
                        sizeImage: 109)
            .disabled(firstStageModel.setupLevel(index: 10).2)
            
            .navigationDestination(isPresented: $firstStageModel.isStageAvailible) {
                StageView()
            }
            
            .navigationDestination(isPresented: $firstStageModel.isGameAvailible) {
                GameView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    FirstStageView()
}

