import SwiftUI

struct LoadingView: View {
    @StateObject var loadingModel =  LoadingViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                Image(ImageName.loadingBackgroundImage.rawValue)
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    ZStack {
                        Image(ImageName.backForTimeLine.rawValue)
                            .resizable()
                            .frame(width: 253, height: 128)
                        
                        Image(loadingModel.loadScreen().0)
                            .resizable()
                            .frame(width: 253, height: 128)
                            .offset(x: loadingModel.loadScreen().1)
                        
                        Text(loadingModel.currentText)
                            .Secular(size: 24, color: .red)
                            .outlineText(width: 0.4)
                            .offset(y: -35)
                    }
                }
            }
            .onAppear {
                loadingModel.startTimer()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    loadingModel.currentIndex = 1
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    loadingModel.currentIndex = 2
                    loadingModel.isMenuAvailible = true
                }
            }
            .navigationDestination(isPresented: $loadingModel.isMenuAvailible) {
                MenuView()
            }
        }
    }
}

#Preview {
    LoadingView()
}

