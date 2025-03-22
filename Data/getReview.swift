//
//  getReview.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 04/11/2024.
//

import Foundation


func getReviewsByProgram(programme: Programme) -> [Avis]{
    var tab = [Avis]()
    for avis in avisTableau{
        if avis.programTitle.id == programme.id {
            tab.append(avis)
        }
    }
    return tab
}



func getReviewsByUser(user: Utilisateur) -> [Avis]{
    var tab = [Avis]()
    for avis in avisTableau{
        if avis.userName.id == user.id {
            tab.append(avis)
        }
    }
    return tab
}

func getUserByReview(review: Avis) -> Utilisateur{

    for avis in avisTableau{
        if avis.id == review.id{
            return avis.userName
        }
    }
    return utilisateurs[0]
}


func getPPByProgram(program : Programme) -> String{
    var users = [Utilisateur]()
    let reviews = getReviewsByProgram(programme: program)
    for review in reviews {
        users.append(review.userName)
    }
    let userAleatoire = users.randomElement()!
    
    return userAleatoire.photoProfil
}


func getReviewsByOtherUser(user: Utilisateur) -> [Avis]{
    var tab = [Avis]()
    for avis in avisTableau{
        if avis.userName.id != user.id {
            tab.append(avis)
        }
    }
    return tab
}
