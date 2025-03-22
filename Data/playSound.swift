//
//  playSound.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 07/11/2024.
//

import Foundation
import AVFoundation


var audioPlayer: AVAudioPlayer?



func playSound() {
        // Assure-toi que le fichier audio est dans ton bundle
        if let soundURL = Bundle.main.url(forResource: "shake_popcorn", withExtension: "mp3") {
            do {
                // Essaye de créer un player audio
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()  // Joue le son
            } catch {
                print("Erreur lors de la lecture du son: \(error)")
            }
        }
    }
