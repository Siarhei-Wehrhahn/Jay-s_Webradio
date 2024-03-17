//
//  PlaySoundFromVideo.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
//

import Foundation
import AVFoundation

class PlaySoundFromVideo {
    var player: AVPlayer?
    
    func playSoundFromVideo(videoURL: URL) {
        let asset = AVAsset(url: videoURL)
        let playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
        
        // Hintergrund-Audio-Wiedergabe erlauben
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
        try? AVAudioSession.sharedInstance().setActive(true)
        
        player?.play()
    }
    
    func pauseSound() {
        player?.pause()
    }
}

