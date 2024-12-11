import SwiftUI

struct TaskView: View {
    @StateObject var taskModel =  TaskViewModel()
    
    var body: some View {
        ZStack {
            Image(ImageName.menuBackground.rawValue)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    CircleButton(foregroundImage: ImageName.backArrowImage.rawValue,
                                 text: "back",
                                 action: taskModel.goToMenu,
                                 sizeBack: 64,
                                 sizeForward: 44,
                                 offsetXtForImage: 0,
                                 offsetYtForImage: 0)
                    .padding(.leading)
                    Spacer()
                    Text("TASKS")
                        .Secular(size: 54, color: .yellow)
                        .outlineText(color: .red, width: 1)
                        .offset(x: -30)
                    Spacer()
                }
                
                Text("0/24")
                    .Secular(size: 32, color: .red)
                    .outlineText(color: .black, width: 0.5)
                
                Image(ImageName.titleStage1.rawValue)
                    .resizable()
                    .frame(width: 218, height: 118)
                
                ScrollView {
                    LazyVGrid(columns: taskModel.columns, spacing: 25) {
                        ForEach(0..<8)  { index in
                            ZStack {
                                Image(ImageName.silverButtonImage.rawValue)
                                    .resizable()
                                    .frame(width: 138, height: 218)
                              
                                Text(taskModel.contact.arrayOfTasks[index])
                                    .Secular(size: 16, color: .white)
                                    .outlineText(color: .black, width: 0.5)
                                    .frame(width: 100)
                                    .shadow(color: Color.red.opacity(0.5), radius: 10, x: 0, y: 5)
                                    .multilineTextAlignment(.center)
                                    .offset(y: -60)
                                
                                HStack(spacing: 0) {
                                    Text(taskModel.contact.arrayOfReward[index])
                                        .Secular(size: 22, color: .yellow)
                                        .outlineText(color: .black, width: 0.5)
                                    
                                    Image(ImageName.coin.rawValue)
                                        .resizable()
                                        .frame(width: 36, height: 36)
                                }
                                .offset(y: 30)
                                
                                BuyButton(action: taskModel.claim,
                                          sizeHImage: 38,
                                          sizeWImage: 88,
                                          offsetY: 100, text: "CLAIM")
                                
                            }
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $taskModel.isMenuAvailible) {
                MenuView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TaskView()
}

