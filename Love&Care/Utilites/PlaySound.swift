//
//  PlaySound.swift
//  Love&Care
//
//  Created by Asalah Sayed on 27/07/2023.
//

import Foundation
import AVFoundation
var audioPlayer: AVAudioPlayer?
func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Couldn't find the file")
        }
        
    }
        
}
