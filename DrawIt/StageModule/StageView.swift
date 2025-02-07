import SwiftUI

struct StageView: View {
    @StateObject var stageModel =  StageViewModel()

    var body: some View {
        ZStack {
            Image(stageModel.contact.backImageArray[stageModel.currentIndex])
                .resizable()
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    HStack {
                        CircleButton(foregroundImage: ImageName.homeImage.rawValue,
                                     text: "home",
                                     action: stageModel.goToMenu,
                                     sizeBack: 64,
                                     sizeForward: 38,
                                     offsetXtForImage: 0,
                                     offsetYtForImage: -3)
                        Spacer()
                        Text("PLAY")
                            .Secular(size: 54, color: .yellow)
                            .outlineText(color: .red, width: 1)
                            .offset(x: -30)
                        Spacer()
                    }
                    .padding()
                    
                    Text("SELECT STAGE")
                        .Secular(size: 24, color: .red)
                        .outlineText(width: 0.5)
                    
                    Image(stageModel.contact.titleImageArray[stageModel.currentIndex])
                        .resizable()
                        .frame(width: 270, height: 146)
                    
                    Image(stageModel.contact.stageImageArray[stageModel.currentIndex])
                        .resizable()
                        .frame(minWidth: 250, maxWidth: 356, minHeight: 250, maxHeight: 356)
                    
                    
                    HStack {
                        CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                     action: stageModel.lowerIndex,
                                     sizeBack: 70,
                                     sizeForward: 48)
                        .disabled(stageModel.currentIndex == 0 ? true : false)
                        .opacity(stageModel.currentIndex == 0 ? 0.5 : 1.0)
                        
                        CircleButton(foregroundImage: stageModel.contact.playImageArray[stageModel.currentIndex],
                                     action: stageModel.goToPlay,
                                     sizeBack: 88,
                                     sizeForward: 45,
                                     offsetXtForImage: stageModel.contact.playImageOffsetArray[stageModel.currentIndex])
                        .offset(y: -10)
                        .disabled(stageModel.contact.playImageArray[stageModel.currentIndex] == ImageName.lock.rawValue ? true : false)
                        
                        CircleButton(foregroundImage: ImageName.forwardArrowImage.rawValue,
                                     action: stageModel.increaseIndex,
                                     sizeBack: 70,
                                     sizeForward: 48)
                        .disabled(stageModel.currentIndex == 3 ? true : false)
                        .opacity(stageModel.currentIndex == 3 ? 0.5 : 1.0)
                    }
                }
            }
            .navigationDestination(isPresented: $stageModel.isMenuAvailible) {
                MenuView()
            }
            
            .navigationDestination(isPresented: $stageModel.isFirstStageAvailible) {
                FirstStageView()
            }
            
            .navigationDestination(isPresented: $stageModel.isSecondStageAvailible) {
                SecondStageView()
            }
            
            .navigationDestination(isPresented: $stageModel.isThirdStageAvailible) {
                ThirdStageView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    StageView()
}

