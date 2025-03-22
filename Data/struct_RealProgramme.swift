//
//  struct_RealProgramme.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 30/10/2024.
//

import Foundation

struct RealProgramme: Identifiable {
    let id = UUID()
    let programmes: [Programme]
    let realisateurs: [Realisateur]
}

var realProgramme: [RealProgramme] = [
    RealProgramme(programmes: [films[0]], realisateurs: [reals[0]]), // Harry Potter
    RealProgramme(programmes: [films[1]], realisateurs: [reals[1]]), // Star Wars VI
    RealProgramme(programmes: [films[2]], realisateurs: [reals[10]]), // Seigneur des Anneaux
    RealProgramme(programmes: [films[3]], realisateurs: [reals[2]]), // Fight Club
    RealProgramme(programmes: [films[4]], realisateurs: [reals[0]]), // Mrs. Doubtfire
    RealProgramme(programmes: [films[5]], realisateurs: [reals[6]]), // T_L_M
    
    RealProgramme(programmes: [series[0]], realisateurs: [reals[14]]), // Andor
    RealProgramme(programmes: [series[1]], realisateurs: [reals[5]]), // Game of Thrones
    RealProgramme(programmes: [series[2]], realisateurs: [reals[12]]), // The Walking Dead
    RealProgramme(programmes: [series[3]], realisateurs: [reals[11]]), // Breaking Bad
    RealProgramme(programmes: [series[4]], realisateurs: [reals[13]]), // Lost
    RealProgramme(programmes: [series[5]], realisateurs: [reals[3]]), // Emily in Paris
    
    RealProgramme(programmes: [documentaires[0]], realisateurs: [reals[9]]), // Vie sur Planète
    RealProgramme(programmes: [documentaires[1]], realisateurs: [reals[7]]), // Miss Americana
    RealProgramme(programmes: [documentaires[2]], realisateurs: [reals[4]]), // Marche de l'Empereur
    RealProgramme(programmes: [documentaires[3]], realisateurs: [reals[8]])  // Sugar Man
]



 
func getReal(programme: Programme) -> [Realisateur] {
    var tab = [Realisateur]()
    for realProg in realProgramme {
        for prog in realProg.programmes{
            if prog.id == programme.id {
                for realisateur in realProg.realisateurs {
                    tab.append(realisateur)
                }
            }
            continue
        }
        continue
    }
    return tab
}



func getProgrammeByReal(realisateur: Realisateur) -> [Programme] {
    var tab = [Programme]()
    for realProg in realProgramme {
        for real in realProg.realisateurs{
            if real.id == realisateur.id {
                for programme in realProg.programmes {
                    tab.append(programme)
                }
            }
            continue
        }
        continue
    }
    return tab
}
