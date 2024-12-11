import SwiftUI

@main
struct DrawItApp: App {
    var body: some Scene {
        WindowGroup {
            LoadingView()
                .onAppear {
                    UserDefaultsManager().firstLaunch()
                }
        }
    }
}
 
