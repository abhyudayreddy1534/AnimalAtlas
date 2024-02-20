//
//  VideoListView.swift
//  AnimalAtlas
//
//  Created by Sravanthi Chinthireddy on 16/02/24.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView(content: {
            List(videos) { videoItem in
                NavigationLink(destination: VideoPlayerView(video: videoItem)) {
                    VideoListItemView(video: videoItem)
                        .padding(.vertical, 8)
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            })
        })
    }
}

#Preview {
    VideoListView()
}
