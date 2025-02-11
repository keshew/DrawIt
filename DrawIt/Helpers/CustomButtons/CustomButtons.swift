import SwiftUI

struct SoundButton: View {
    var foregroundImage: String
    var text: String = ""
    var action: () -> Void
    var isOff: Bool
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.circleButtonImage.rawValue)
                    .resizable()
                    .frame(width: 64, height: 64)
                
                if !isOff {
                    HStack(spacing: -5) {
                        Image(ImageName.soundsOffImage.rawValue)
                            .resizable()
                            .frame(width: 22, height: 22)
                        
                        Image(ImageName.xImage.rawValue)
                            .resizable()
                            .frame(width: 30, height: 26)
                            .offset(y: 2)
                    }
                    .offset(x: 3)
                    
                    Text(text)
                        .Secular(size: 18, color: .gray)
                        .outlineText(width: 0.6)
                        .offset(y: 25)
                    
                } else {
                    Image(ImageName.soundsOnImage.rawValue)
                        .resizable()
                        .frame(width: 38, height: 38)
                    
                    Text(text)
                        .Secular(size: 18, color: .red)
                        .outlineText(width: 0.6)
                        .offset(y: 25)
                }
            }
        }
    }
}

struct CircleButton: View {
    var foregroundImage: String
    var text: String = ""
    var action: () -> Void
    var sizeBack: CGFloat
    var sizeForward: CGFloat
    var offsetXtForImage: CGFloat = 0
    var offsetYtForImage: CGFloat = 0
    var offsetXtForText: CGFloat = 25
    var sizeForText: CGFloat = 18
    var widthForOutline: CGFloat = 0.6
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.circleButtonImage.rawValue)
                    .resizable()
                    .frame(width: sizeBack, height: sizeBack)
                
                Image(foregroundImage)
                    .resizable()
                    .frame(width: sizeForward, height: sizeForward)
                    .offset(x: offsetXtForImage, y: offsetYtForImage)
                
                Text(text)
                    .Secular(size: sizeForText, color: .red)
                    .outlineText(width: widthForOutline)
                    .offset(y: offsetXtForText)
            }
        }
    }
}

struct ResumeButton: View {
    var foregroundImage: String
    var text: String = ""
    var sizeBack: CGFloat
    var sizeForward: CGFloat
    var offsetXtForImage: CGFloat = 0
    var offsetYtForImage: CGFloat = 0
    var offsetXtForText: CGFloat = 25
    var sizeForText: CGFloat = 18
    var widthForOutline: CGFloat = 0.6
    var action: (() -> ())
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.circleButtonImage.rawValue)
                    .resizable()
                    .frame(width: sizeBack, height: sizeBack)
                
                Image(foregroundImage)
                    .resizable()
                    .frame(width: sizeForward, height: sizeForward)
                    .offset(x: offsetXtForImage, y: offsetYtForImage)
                
                Text(text)
                    .Secular(size: sizeForText, color: .red)
                    .outlineText(width: widthForOutline)
                    .offset(y: offsetXtForText)
            }
        }
    }
}

struct MoneyView: View {
    var text: String = ""
    var body: some View {
        ZStack {
            Image(ImageName.moneyBackImage.rawValue)
                .resizable()
                .frame(width: 137, height: 62)
            
            Text(text)
                .Secular(size: 24, color: .yellow)
                .outlineText(color: .black, width: 0.5)
                .shadow(color: .yellow, radius: 10)
                .offset(x: 23)
        }
    }
}

struct SquareButton: View {
    var foregroundImage: String
    var sizeH: CGFloat
    var sizeW: CGFloat
    var text: String = ""
    var action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.sqareButtonImage.rawValue)
                    .resizable()
                    .frame(width: 101, height: 90)
                
                Image(foregroundImage)
                    .resizable()
                    .frame(width: sizeW, height: sizeH)
                    .offset(y: -25)
                
                Text(text)
                    .Secular(size: 24, color: .red)
                    .outlineText(color: Color(#colorLiteral(red: 248/255, green: 235/255, blue: 157/255, alpha: 1)), width: 0.5)
                    .offset(y: 20)
            }
        }
    }
}

struct PlayButton: View {
    var action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.wideButtonImage.rawValue)
                    .resizable()
                    .frame(width: 267, height: 96)
                    .offset(x: 20)
                
                Image(ImageName.circleButtonImage.rawValue)
                    .resizable()
                    .frame(width: 104, height: 104)
                    .offset(x: -100)
                
                Image(ImageName.playButton.rawValue)
                    .resizable()
                    .frame(width: 53, height: 49)
                    .offset(x: -95)
                
                Text("PLAY")
                    .Secular(size: 54, color: .yellow)
                    .outlineText(color: .red, width: 1)
                    .offset(x: 35, y: 3)
            }
        }
        
    }
}

struct ShopItem: View {
    var action: () -> Void
    var foregroundImage: String
    var text: String
    var sizeHImage: CGFloat
    var sizeWImage: CGFloat
    var sizeHText: CGFloat
    var sizeWText: CGFloat
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.hightButtonImage.rawValue)
                    .resizable()
                    .frame(width: 167, height: 247)
                
                Image(foregroundImage)
                    .resizable()
                    .frame(width: sizeWImage, height: sizeHImage)
                    .offset(y: -25)
                
                Image(text)
                    .resizable()
                    .frame(width: sizeWText, height: sizeHText)
                    .offset(y: 110)
            }
        }
    }
}

struct BuyButton: View {
    var action: () -> Void
    var sizeHImage: CGFloat
    var sizeWImage: CGFloat
    var offsetY: CGFloat
    var text: String = "BUY"
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                Image(ImageName.orangeButtonImage.rawValue)
                    .resizable()
                    .frame(width: sizeWImage, height: sizeHImage)
                
                Text(text)
                    .Secular(size: 18, color: .orange)
                    .outlineText(color: .black, width: 0.5)
            }
        }
        .offset(y: offsetY)
    }
}

struct ShopBackgroundView: View {
    var action: () -> Void
    var image: String
    var body: some View {
        ZStack {
            Image(ImageName.silverButtonImage.rawValue)
                .resizable()
                .frame(width: 138, height: 237)
            
            Image(image)
                .resizable()
                .frame(width: 62, height: 134)
                .offset(y: -30)
            
            HStack(spacing: 0) {
                Text("750")
                    .Secular(size: 20, color: .yellow)
                    .outlineText(color: .black, width: 0.5)
                    .shadow(color: .yellow, radius: 10)
                
                Image(ImageName.coin.rawValue)
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            .offset(y: 65)
            
            BuyButton(action: action,
                      sizeHImage: 38,
                      sizeWImage: 88,
                      offsetY: 110)
        }
    }
}

struct ScrollShopBackgrounds: View {
    var action: () -> Void
    let columns: [GridItem]
    var imageArray: [String]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                ForEach(0..<5)  { index in
                    if index == 4 {
                        ShopBackgroundView(action: action,
                                           image: imageArray[index])
                        .offset(x: 85)
                    } else {
                        ShopBackgroundView(action: action,
                                           image: imageArray[index])
                    }
                }
            }
        }
    }
}

struct ScrollBallsBackgrounds: View {
    var action: () -> Void
    let columns: [GridItem]
    var imageArray: [String]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 25) {
                ForEach(0..<15)  { index in
                    ZStack {
                        Image(ImageName.silverButtonImage.rawValue)
                            .resizable()
                            .frame(width: 108, height: 159)
                        
                        Image(imageArray[index])
                            .resizable()
                            .frame(width: 66, height: 66)
                            .offset(y: -20)
                        
                        HStack(spacing: 0) {
                            Text("250")
                                .Secular(size: 18, color: .yellow)
                                .outlineText(color: .black, width: 0.5)
                                .shadow(color: .yellow, radius: 10)
                            
                            Image(ImageName.coin.rawValue)
                                .resizable()
                                .frame(width: 28, height: 28)
                        }
                        .offset(y: 35)
                        
                        BuyButton(action: action,
                                  sizeHImage: 32,
                                  sizeWImage: 76,
                                  offsetY: 76)
                        
                    }
                }
            }
        }
    }
}


struct LevelButton: View {
    var action: () -> Void
    var imageOfLevel: String
    var starImage: String = ImageName.clearImage.rawValue
    var text: String
    var offsetX: CGFloat
    var offsetY: CGFloat
    var sizeImage: CGFloat
    var body: some View {
        Button(action: {
            action()
        }) {
            ZStack {
                if imageOfLevel == ImageName.lockedLevelBackgroundImage.rawValue {
                    Image(imageOfLevel)
                        .resizable()
                        .frame(width: sizeImage, height: sizeImage)
                        .opacity(0.5)
                    
                    Text(text)
                        .Secular(size: 36, color: .white)
                        .outlineText(color: .black, width: 0.5)
                        .opacity(0.5)
                } else {
                    Image(imageOfLevel)
                        .resizable()
                        .frame(width: sizeImage, height: sizeImage)
                    if imageOfLevel != ImageName.levelButtonWithLock.rawValue {
                        Text(text)
                            .Secular(size: 36, color: .white)
                            .outlineText(color: .black, width: 0.5)
                    }
                    
                    Image(starImage)
                        .resizable()
                        .frame(width: 90, height: 45)
                        .offset(y: 30)
                }
            }
        }
        .disabled(imageOfLevel != ImageName.currentLevelBackgroundImage.rawValue ? true : false)
        .offset(x: offsetX, y: offsetY)
    }
}






