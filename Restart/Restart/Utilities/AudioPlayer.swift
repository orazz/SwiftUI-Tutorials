//
//  AudioPlayer.swift
//  Restart
//
//  Created by Oraz Atakishiyev on 08.01.2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play")
        }
    }
}
