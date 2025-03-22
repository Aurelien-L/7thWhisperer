//
//  tableau_docus.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 30/10/2024.
//

import Foundation


let Vie_sur_Planete = Programme(
    affiche: "La Vie sur notre Planète",
    type: .Documentaire,
    genres: [.Documentaire],
    titre: "La Vie sur notre Planète",
    annee: 2020,
    synopsis: "Cette série de Steven Spielberg et de l'équipe de Notre planète raconte l'incroyable histoire de la vie sur Terre depuis quatre milliards d'années.",
    plateform: ["netflix"]
)

let Miss_Americana = Programme(
    affiche: "Miss Americana",
    type: .Documentaire,
    genres: [.Documentaire],
    titre: "Miss Americana",
    annee: 2019,
    synopsis: "Taylor Swift se dévoile non seulement en tant qu'artiste, mais aussi en tant que femme exploitant l'incroyable puissance de sa voix.",
    plateform: ["netflix"]
)

let Marche_Empereur = Programme(
    affiche: "marche_de_lempereur",
    type: .Documentaire,
    genres: [.Documentaire],
    titre: "La marche de l'Empereur",
    annee: 2005,
    synopsis: "L'histoire des manchots empereurs et de leur cycle de reproduction est unique au monde, mêlant amour, drame et aventure au cœur de l'Antarctique.",
    plateform: ["disney+"]
)

let Sugar_Man = Programme(
    affiche: "Sugar Man",
    type: .Documentaire,
    genres: [.Documentaire],
    titre: "Sugar Man",
    annee: 2012,
    synopsis: "Au début des années 70, Sixto Rodriguez enregistre deux albums sur une marque de disque de Motown. C'est un échec, mais il devient un symbole de la lutte contre l'Apartheid en Afrique du Sud.",
    plateform: ["primevideo"]
)


var documentaires = [
    Vie_sur_Planete,
    Miss_Americana,
    Marche_Empereur,
    Sugar_Man
]
