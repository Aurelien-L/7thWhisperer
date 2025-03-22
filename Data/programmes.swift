//
//  programmes.swift
//  7thWhisperer
//
//  Cr/Users/apprenant86/Documents/PROJET/7thWhisperer/7thWhisperer/Data/tableau_films.swifteated by Apprenant 86 on 29/10/2024.
//

import Foundation

struct Programme: Identifiable {
    let id = UUID()
    
    let affiche: String
    let type: TypeProgramme
    let genres: [GenreProgramme]
    let titre: String
    let annee: Int
    let synopsis: String
    let plateform: [String]
}

enum TypeProgramme: String {
    case Film = "Film"
    case Série = "Série"
    case Documentaire = "Documentaire"
}

enum GenreProgramme: String {
    case Comédie = "Comédie"
    case Drame = "Drame"
    case Comédie_dramatique = "Comédie dramatique"
    case Thriller = "Thriller"
    case Action_Aventure = "Action/Aventure"
    case Horreur = "Horreur"
    case Science_Fiction = "Science Fiction"
    case Fantastique = "Fantastique"
    case Romance = "Romance"
    case Documentaire = "Documentaire"
}


var allPrograms = films + series + documentaires




