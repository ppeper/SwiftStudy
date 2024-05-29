//
//  VideoListView.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }
                }
            } //: LIST
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        videos.shuffle()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NAVIGATION
    }
}

#Preview {
    VideoListView()
}
