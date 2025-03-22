//
//  tableau_films.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 30/10/2024.
//

import Foundation


let Harry_Potter = Programme(
    affiche: "afficheHP1",
    type: .Film,
    genres: [.Fantastique],
    titre: "Harry Potter à l’Ecole des Sorciers",
    annee: 2001,
    synopsis: "Orphelin, Harry Potter a été recueilli à contrecœur par son oncle Vernon et sa tante Pétunia, aussi cruels que mesquins. Constamment maltraité, il doit en outre supporter les jérémiades de son cousin Dudley. À l'approche de ses 11 ans, Harry découvre qu'il est le fils de puissants magiciens et qu'il possède des pouvoirs extraordinaires. Quand on lui propose d'intégrer Poudlard, il trouve enfin le foyer qui lui a toujours manqué.",
    plateform: ["primevideo"]
)

let Star_Wars_VI = Programme(
    affiche: "starwarsVI",
    type: .Film,
    genres: [.Science_Fiction],
    titre: "Star Wars VI - Le retour du Jedi",
    annee: 1983,
    synopsis: "L'Empire galactique est plus puissant que jamais. Après la trahison de Lando Calrissian, Han Solo est remis à Jabba Le Hutt par Boba Fett. Luke Skywalker et Lando parviennent à libérer leurs amis et s'envolent pour une mission sur la lune forestière d'Endor, afin de détruire le générateur du bouclier de l'Etoile de la Mort.",
    plateform: ["disney+"]
)

let Seigneur_des_Anneaux = Programme(
    affiche: "SDA",
    type: .Film,
    genres: [.Fantastique],
    titre: "Le Seigneur des Anneaux - La communauté de l’Anneau",
    annee: 2001,
    synopsis: "Un jeune hobbit, Frodon Sacquet, hérite d'un anneau magique. Sous ses apparences de simple bijou, il s'agit en réalité d'un instrument de pouvoir absolu. Frodon doit parvenir, avec l'aide de la Communauté de l'Anneau, jusqu'à la Montagne du Destin pour le détruire.",
    plateform: ["primevideo", "netflix"]
)

let Fight_Club = Programme(
    affiche: "fightClub",
    type: .Film,
    genres: [.Drame, .Thriller],
    titre: "Fight Club",
    annee: 1999,
    synopsis: "Le narrateur, sans identité précise, vit seul et se retrouve dans un club clandestin où il va retrouver sa virilité et l'échange. Ce club, dirigé par Tyler Durden, prêche l'amour de son prochain et les deux hommes se lancent dans une série de péripéties.",
    plateform: ["disney+"]
)

let Mrs_Doubtfire = Programme(
    affiche: "mme_doubtfire",
    type: .Film,
    genres: [.Comédie],
    titre: "Mrs Doubtfire",
    annee: 1994,
    synopsis: "Daniel Hillard, un comédien de doublage, perd la garde de ses enfants après un divorce. Pour les revoir, il se déguise en gouvernante anglaise, Madame Doubtfire. Bien qu'il parvienne à donner le change, des complications surviennent avec sa femme et l'enquêtrice sociale.",
    plateform: ["disney+"]
)

let T_L_M = Programme(
    affiche: "t_l_m",
    type: .Film,
    genres: [.Comédie],
    titre: "Threat Level Midnight",
    annee: 2011,
    synopsis: "Après que l'agent secret Michael Scarn soit contraint à la retraite, il doit empêcher un maniaque de faire exploser un stade de football rempli d'otages. C'est une aventure pleine d'action et de rebondissements.",
    plateform: ["netflix"]
)

var films = [Harry_Potter, Star_Wars_VI, Seigneur_des_Anneaux, Fight_Club, Mrs_Doubtfire, T_L_M]
