//
//  getRandomMovie.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 31/10/2024.
//

import Foundation

func getRandomProgram() -> Programme {
    return allPrograms.randomElement()!
}



func getRandomProgramByCommu() -> Programme {
    var programTab = [Programme]()
    for avis in avisTableau{
        if avis.rating >= 7{
            programTab.append(avis.programTitle)
        }
    }
    return programTab.randomElement()!
}

