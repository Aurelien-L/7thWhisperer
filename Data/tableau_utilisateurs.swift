//
//  tableau_utilisateurs.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 31/10/2024.
//

import Foundation

let Keke = Utilisateur(
    username: Username.Keke,
    badge: true,
    photoProfil:"Keke",
    banner: "banniere-genshin")

let Movie_Mingle = Utilisateur(
    username: Username.Movie_Mingle,
    badge: true,
    photoProfil:"movie_mingle",
    banner: "banniere-shrek")

let Tea_Baggins = Utilisateur(
    username: Username.Tea_Baggins,
    badge: false,
    photoProfil:"Tea_Baggins",
    banner: "banniere-SW")

let Donny_Jepp = Utilisateur(
    username: Username.Donny_Jepp,
    badge: true,
    photoProfil:"Donny_Jepp",
    banner: "Banniere")

let Mr_Anderson = Utilisateur(
    username: Username.Mr_Anderson, 
    badge: false,
    photoProfil:"MAnderson",
    banner: "banniere-OUTW")

let Hobbit = Utilisateur(
    username: Username.Hobbit,
    badge: false,
    photoProfil:"Hobbit",
    banner: "banniere-Gollum")

let sylvestre = Utilisateur(
    username: Username.sylvestre,
    badge: true,
    photoProfil:"sylvestre",
    banner: "banniere-chat")

var utilisateurs = [Keke, Movie_Mingle, Tea_Baggins, Donny_Jepp, Mr_Anderson, Hobbit, sylvestre]
