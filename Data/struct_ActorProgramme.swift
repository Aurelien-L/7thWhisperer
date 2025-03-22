//
//  struct_ActorProgramme.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 30/10/2024.
//

import Foundation

struct ActorProgramme: Identifiable {
    let id = UUID()
    let programmes: [Programme]
    let acteurs: [Actor]
}

var actorProgramme: [ActorProgramme] = [
    ActorProgramme(programmes: [films[0]], acteurs: [actors[0], actors[1], actors[2]]), // Harry Potter
    ActorProgramme(programmes: [films[1]], acteurs: [actors[9], actors[10], actors[11]]), // Star Wars VI
    ActorProgramme(programmes: [films[2]], acteurs: [actors[12], actors[13], actors[14]]), // Seigneur des Anneaux
    ActorProgramme(programmes: [films[3]], acteurs: [actors[6],actors[7], actors[8]]), // Fight Club
    ActorProgramme(programmes: [films[4]], acteurs: [actors[3], actors[4], actors[5]]), // Mrs. Doubtfire
    ActorProgramme(programmes: [films[5]], acteurs: [actors[15], actors[16], actors[17]]), // T_L_M

    ActorProgramme(programmes: [series[0]], acteurs: [actors[18], actors[19], actors[20]]), // Andor
    ActorProgramme(programmes: [series[1]], acteurs: [actors[21], actors[22], actors[23]]), // Game of Thrones
    ActorProgramme(programmes: [series[2]], acteurs: [actors[27], actors[28]]), // The Walking Dead
    ActorProgramme(programmes: [series[3]], acteurs: [actors[24], actors[25], actors[26]]), // Breaking Bad
    ActorProgramme(programmes: [series[4]], acteurs: [actors[32], actors[33], actors[34]]), // Lost
    ActorProgramme(programmes: [series[5]], acteurs: [actors[29], actors[30], actors[31]]), // Emily in Paris

    ActorProgramme(programmes: [documentaires[0]], acteurs: [actors[39]]), // Vie sur Planète
    ActorProgramme(programmes: [documentaires[1]], acteurs: [actors[35]]), // Miss Americana
    ActorProgramme(programmes: [documentaires[2]], acteurs: [actors[36], actors[37], actors[38]]), // Marche de l'Empereur
    ActorProgramme(programmes: [documentaires[3]], acteurs: [actors[40]]) // Sugar Man
]



func getActor(programme: Programme) -> [Actor] {
    var tab = [Actor]()
    for actorProg in actorProgramme {
        for prog in actorProg.programmes{
            if prog.id == programme.id{
                for acteur in actorProg.acteurs{
                    tab.append(acteur)
                }
            }
            continue
        }
        continue
    }
    return tab
}



func getProgrammeByActor(acteur: Actor) -> [Programme] {
    var tab = [Programme]()
    for actorProg in actorProgramme{
        for myActor in actorProg.acteurs{
            if myActor.id == acteur.id{
                for programme in actorProg.programmes{
                    tab.append(programme)
                }
            }
            continue
        }
        continue
    }
    return tab
}
