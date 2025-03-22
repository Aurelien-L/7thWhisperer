//
//  tableau_series.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 30/10/2024.
//

import Foundation

let Andor = Programme(
    affiche: "andor",
    type: .Série,
    genres: [.Science_Fiction],
    titre: "Andor",
    annee: 2022,
    synopsis: "Cinq ans avant la périlleuse mission sur la planète tropicale Scarif, Cassian Andor participe comme espion aux prémices de la rébellion contre l'Empire galactique.",
    plateform: ["disney+"]
)

let Game_of_Thrones = Programme(
    affiche: "GOT",
    type: .Série,
    genres: [.Fantastique, .Drame],
    titre: "Game of Thrones",
    annee: 2011,
    synopsis: "Le Royaume des Sept Couronnes est constitué de sept provinces régies par des maisons, dont la plupart aspirent à monter sur le trône. La mort du roi aiguise les appétits.",
    plateform: ["primevideo"]
)

let The_Walking_Dead = Programme(
    affiche: "TWD",
    type: .Série,
    genres: [.Horreur, .Drame],
    titre: "The Walking Dead",
    annee: 2010,
    synopsis: "Après une apocalypse ayant transformé la quasi-totalité de la population en zombies, un groupe d'hommes et de femmes tente de survivre.",
    plateform: ["netflix"]
)

let Breaking_Bad = Programme(
    affiche: "Breaking Bad",
    type: .Série,
    genres: [.Drame, .Thriller],
    titre: "Breaking Bad",
    annee: 2008,
    synopsis: "Walter White, un professeur de chimie, se tourne vers la fabrication de meth pour subvenir aux besoins de sa famille après avoir reçu un diagnostic de cancer.",
    plateform: ["netflix"]
)

let Lost = Programme(
    affiche: "Lost",
    type: .Série,
    genres: [.Drame, .Science_Fiction],
    titre: "Lost",
    annee: 2004,
    synopsis: "Après le crash de leur avion sur une île perdue, les survivants doivent apprendre à cohabiter et survivre dans un environnement hostile.",
    plateform: ["disney+"]
)

let Emily_in_Paris = Programme(
    affiche: "Emily in Paris",
    type: .Série,
    genres: [.Comédie, .Romance],
    titre: "Emily in Paris",
    annee: 2020,
    synopsis: "Emily Cooper, une jeune américaine, débarque à Paris pour travailler dans une agence de marketing, apportant son expertise et une touche américaine.",
    plateform: ["netflix"]
)

var series = [ Andor,
    Game_of_Thrones,
    The_Walking_Dead,
    Breaking_Bad,
    Lost,
    Emily_in_Paris
]
