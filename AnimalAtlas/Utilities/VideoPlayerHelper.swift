//
//  VideoPlayerHelper.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import Foundation
import AVKit

var videoPlayer : AVPlayer?

func playVideo(fileName: String, fileformat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileformat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileformat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
