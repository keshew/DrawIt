import SwiftUI

extension Text {
    func Secular(size: CGFloat, color: Color = Color(#colorLiteral(red: 255/255, green: 144/255, blue: 0/255, alpha: 1))) -> some View {
        self.font(.custom("SecularOne-Regular", size: size))
            .bold()
            .foregroundColor(color)
    }
}
