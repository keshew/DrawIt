import SwiftUI

struct StageModel {
    var titleImageArray = [ImageName.titleStage1.rawValue, ImageName.titleStage2.rawValue, ImageName.titleStage3.rawValue, ImageName.titleStage4.rawValue]
    var stageImageArray = [ImageName.stageImage1.rawValue, ImageName.stageImage2.rawValue, ImageName.stageImage3.rawValue, ImageName.stageImage4.rawValue]
    var backImageArray = [ImageName.stageBack1.rawValue, ImageName.stageBack2.rawValue, ImageName.stageBack3.rawValue, ImageName.stageBack4.rawValue]
    var playImageArray = [ImageName.playButton.rawValue, ImageName.playButton.rawValue, ImageName.playButton.rawValue, ImageName.lock.rawValue]
    var playImageOffsetArray: [CGFloat] = [5,5,5,0]
}


