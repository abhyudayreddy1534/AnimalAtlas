//
//  VideoPlayerView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 19/02/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var video: VideoModel
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: video.id, fileformat: "mp4")) {
                Text(video.name)
            }
            .overlay(alignment: .topLeading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.horizontal, 8)
            }
        }
        .tint(.accent)
        .navigationTitle(video.name)
        .toolbarTitleDisplayMode(.inline)
    }
}

#Preview {
    VideoPlayerView(video: VideoModel(id: "lion", name: "Lion", headline: ""))
}
