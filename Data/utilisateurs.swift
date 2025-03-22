//
//  utilisateurs.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 30/10/2024.
//

import Foundation

struct Utilisateur: Identifiable{
    
    let id = UUID()
    let username: Username
    let badge: Bool
    let photoProfil: String
    let banner: String
    
}


enum Username: String{
    case Movie_Mingle = "Movie Mingle"
    case Tea_Baggins = "Tea Baggins"
    case Donny_Jepp = "Donny Jepp"
    case Mr_Anderson = "Mr Anderson"
    case Keke = "Keke"
    case Hobbit = "Stupide Hobbit Jouflu"
    case sylvestre = "Sylvestre"
}



func isMyProfile(user : Utilisateur) -> Bool {
    if user.id == utilisateurs[0].id{
        return true
    } else {
        return false
    }
}


func getBadge(badge : Bool) -> String {
    if badge == true{
        return "🎥"
    } else{
        return ""
    }
}
