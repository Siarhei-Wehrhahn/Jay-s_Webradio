//
//  VideoPlayerView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
//

import SwiftUI
import AVFoundation
import _AVKit_SwiftUI

struct VideoPlayerView: View {
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: URL(string: "http://swf.livestreamingcdn.com/iframe/novideo.mp4")!))
                .frame(width: 365, height: 300)
        }
        .padding()
    }
}

#Preview {
    VideoPlayerView()
}
