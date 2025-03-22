


import Foundation

struct Actor: Identifiable {
    let id = UUID()
    let portrait: String
    let name: String
    let bio: String
}


var actors: [Actor] = [
    Actor(
        portrait: "DanielRadcliffe",
        name: "Daniel Radcliffe",
        bio: "Daniel Radcliffe est un acteur et producteur britannique, né le 23 juillet 1989 dans le quartier londonien de Fulham."
    ),
    Actor(
        portrait: "RupertGrint",
        name: "Rupert Grint",
        bio: "Rupert Grint, né le 24 août 1988 à Harlow (Essex), est un acteur et producteur britannique."
    ),
    Actor(
        portrait: "Emma_Watson",
        name: "Emma Watson",
        bio: "Emma Watson, née le 15 avril 1990 à Paris, est une actrice britannique. Elle est devenue célèbre en jouant, de son enfance en 2001 à l'âge adulte en 2011, le rôle d'Hermione Granger dans la série des films Harry Potter."
    ),
    Actor(
        portrait: "Robin Williams",
        name: "Robin Williams",
        bio: "Robin Williams est un acteur, humoriste et producteur américain, né le 21 juillet 1951 à Chicago (Illinois) et mort le 11 août 2014 à Paradise Cay (Californie)."
    ),
    Actor(
        portrait: "Sally_field",
        name: "Sally Field",
        bio: "Sally Field, née le 6 novembre 1946 à Pasadena en Californie, est une actrice, productrice, réalisatrice et scénariste américaine. Prix d'interprétation féminine du Festival de Cannes en 1979, elle est également deux fois lauréate de l'Oscar de la meilleure actrice."
    ),
    Actor(
        portrait: "pierceBrosnan",
        name: "Pierce Brosnan",
        bio: "Pierce Brosnan, né le 16 mai 1953 à Drogheda, (comté de Louth, Irlande), est un acteur et producteur de cinéma irlando-américain. Il est notamment connu pour être le septième acteur à incarner James Bond, qu'il interprète dans quatre films de la franchise britannique."
    ),
    Actor(
        portrait: "bradPitt",
        name: "Brad Pitt",
        bio: "Brad Pitt, né le 18 décembre 1963 à Shawnee, dans l'Oklahoma, est un acteur et producteur américain."
    ),
    Actor(
        portrait: "edwardNorton",
        name: "Edward Norton",
        bio: "Edward Norton est un acteur, réalisateur et producteur de cinéma américain, né le 18 août 1969 à Boston (Massachusetts)."
    ),
    Actor(
        portrait: "helenaBonhamCarter",
        name: "Helena Bonham Carter",
        bio: "Helena Bonham Carter, née le 26 mai 1966 à Londres, est une actrice britannique. Elle est reconnue pour ses interprétations de personnages excentriques et originaux."
    ),
    Actor(
        portrait: "Mark_Hamill",
        name: "Mark Hamill",
        bio: "Mark Hamill est un acteur américain, né le 25 septembre 1951 à Oakland (Californie, États-Unis)."
    ),
    Actor(
        portrait: "harrison ford",
        name: "Harrison Ford",
        bio: "Harrison Ford est un acteur américain, né le 13 juillet 1942 à Chicago (Illinois)."
    ),
    Actor(
        portrait: "Carrie_Fisher",
        name: "Carrie Fisher",
        bio: "Carrie Fisher, née le 21 octobre 1956 à Beverly Hills et morte le 27 décembre 2016 à Los Angeles, est une actrice, romancière et scénariste américaine."
    ),
    Actor(
        portrait: "Elijah-Wood",
        name: "Elijah Wood",
        bio: "Elijah Wood est un acteur, producteur et DJ américain, né le 28 janvier 1981 à Cedar Rapids (Iowa)."
    ),
    Actor(
        portrait: "orlando_bloom",
        name: "Orlando Bloom",
        bio: "Orlando Bloom est un acteur britannique, né le 13 janvier 1977 à Canterbury (Kent, Angleterre)."
    ),
    Actor(
        portrait: "viggo mortensen",
        name: "Viggo Mortensen",
        bio: "Viggo Mortensen est un acteur, réalisateur, scénariste, producteur, musicien, photographe, peintre et poète américano-danois, né le 20 octobre 1958 à Watertown, État de New York."
    ),
    Actor(
        portrait: "steveCarell",
        name: "Steve Carell",
        bio: "Steve Carell est un acteur, scénariste, producteur de cinéma et réalisateur américain, né le 16 août 1962 à Concord (Massachusetts)."
    ),
    Actor(
        portrait: "rainnWilson",
        name: "Rainn Wilson",
        bio: "Rainn Wilson, né Rainn Dietrich Wilson le 20 janvier 1966 à Seattle, est un acteur américain."
    ),
    Actor(
        portrait: "johnKrasinski",
        name: "John Krasinski",
        bio: "John Krasinski est un acteur, réalisateur, producteur et scénariste américain, né le 20 octobre 1979 à Newton dans le Massachusetts. Il est notamment connu pour le rôle de Jim Halpert dans la série télévisée américaine The Office."
    ),
    Actor(
        portrait: "Diego-Luna",
        name: "Diego Luna Alexander",
        bio: "Diego Luna Alexander est un acteur, réalisateur et scénariste mexicano-britannique, né le 29 décembre 1979 à Mexico."
    ),
    Actor(
        portrait: "Stellan Skarsgard",
        name: "Stellan Skarsgård",
        bio: "Stellan Skarsgård est un acteur suédois, né le 13 juin 1951 à Göteborg."
    ),
    Actor(
        portrait: "Kyle_Soller",
        name: "Kyle Soller",
        bio: "Kyle Soller est un acteur américain, né le 1er juillet 1983 à Bridgeport (Connecticut)."
    ),
    Actor(
        portrait: "Emilia_Clarke",
        name: "Emilia Clarke",
        bio: "Emilia Clarke est une actrice britannique, née le 23 octobre 1986 à Londres."
    ),
    Actor(
        portrait: "Kit_harington",
        name: "Kit Harington",
        bio: "Christopher Catesby Harington, dit Kit Harington, est un acteur britannique, né le 26 décembre 1986 à Acton (Londres)."
    ),
    Actor(
        portrait: "Maisie_Williams",
        name: "Maisie Williams",
        bio: "Maisie Williams, née le 15 avril 1997 à Bristol, est une actrice britannique. Elle est connue pour son interprétation d'Arya Stark dans la série télévisée à succès Game of Thrones."
    ),
    Actor(
        portrait: "Bryan_Cranston",
        name: "Bryan Cranston",
        bio: "Bryan Cranston est un acteur, scénariste, réalisateur et producteur américain, né le 7 mars 1956 à Los Angeles (Californie)."
    ),
    Actor(
        portrait: "Aaron_Paul",
        name: "Aaron Paul",
        bio: "Aaron Paul Sturtevant, dit Aaron Paul est un acteur américain, né le 27 août 1979 à Emmett (Idaho)."
    ),
    Actor(
        portrait: "Anna Gunn",
        name: "Anna Gunn",
        bio: "Anna Gunn est une actrice américaine, née le 11 août 1968 à Santa Fe (Nouveau-Mexique). Elle est surtout connue pour son rôle de Skyler White dans la série télévisée Breaking Bad."
    ),
    Actor(
        portrait: "Norman_Reedus",
        name: "Norman Reedus",
        bio: "Norman Reedus est un acteur et mannequin américain, né le 6 janvier 1969 à Hollywood (Californie)."
    ),
    Actor(
        portrait: "andrew-Lincoln",
        name: "Andrew Lincoln",
        bio: "Andrew Lincoln est un acteur britannique, né le 14 septembre 1973 à Londres. Il est surtout connu pour son rôle de Rick Grimes dans la série télévisée The Walking Dead."
    ),
    Actor(
        portrait: "lilyCollins",
        name: "Lily Collins",
        bio: "Lily Collins est une actrice britannique et mannequin, née le 18 mars 1989 à Guildford (Angleterre). Elle est la fille du musicien Phil Collins."
    ),
    Actor(
        portrait: "ashleyPark",
        name: "Ashley Park",
        bio: "Ashley Park est une actrice et chanteuse américaine, née le 6 juin 1991 à Glendale, Californie."
    ),
    Actor(
        portrait: "lucasNicolasBravo",
        name: "Lucas Nicolas Bravo",
        bio: "Lucas Nicolas Bravo est un acteur et mannequin français, né le 26 mars 1988 à Paris."
    ),
    Actor(
        portrait: "Matthew_Fox",
        name: "Matthew Chandler Fox",
        bio: "Matthew Chandler Fox est un acteur américain, né le 14 juillet 1966 à Abington, en Pennsylvanie."
    ),
    Actor(
        portrait: "Evangeline_Lilly",
        name: "Evangeline Lilly",
        bio: "Evangeline Lilly est une actrice canadienne, née le 3 août 1979 à Fort Saskatchewan (Alberta). Elle est connue pour son rôle de Kate Austen dans la série Lost."
    ),
    Actor(
        portrait: "Harold_Perrineau",
        name: "Harold Perrineau Jr",
        bio: "Harold Perrineau, Jr. est un acteur américain, né le 7 août 1963 à New York."
    ),
    Actor(
        portrait: "Taylor_Swift",
        name: "Taylor Swift",
        bio: "Taylor Swift est une autrice-compositrice-interprète, née le 13 décembre 1989 à Reading (Pennsylvanie). Elle est l'une des artistes les plus vendues au monde."
    ),
    Actor(
        portrait: "Romane Bohringer",
        name: "Romane Bohringer",
        bio: "Romane Bohringer, née le 14 août 1973 à Pont-Sainte-Maxence (Oise), est une actrice française. Elle est la fille de Richard Bohringer."
    ),
    Actor(
        portrait: "Charles_Berling",
        name: "Charles Berling",
        bio: "Charles Berling, né le 30 avril 1958 à Saint-Mandé (Val-de-Marne), est un acteur, metteur en scène, réalisateur, scénariste et producteur français."
    ),
    Actor(
        portrait: "Jules Sitruk",
        name: "Jules Sitruk",
        bio: "Jules Sitruk est un acteur français, né le 16 avril 1990 aux Lilas (Seine-Saint-Denis). Il a gagné en notoriété grâce à plusieurs films et séries télévisées."
    )
    ,
    Actor(
        portrait: "Morgan_Freeman",
        name: "Morgan Freeman",
        bio: "Morgan Freeman, né le 1er juin 1937 à Memphis (Tennessee), est un acteur, réalisateur et producteur de cinéma américain. Considéré comme l’un des plus grands acteurs de sa génération, il commence sa carrière théâtrale et cinématographique en 1964."
    )
    ,
    Actor(
        portrait: "sixtoRodriguez",
        name: "Sixto Rodriguez",
        bio: "Sixto Diaz Rodriguez, connu sous son nom d'artiste Rodriguez, né le 10 juillet 1942 à Détroit dans le Michigan et mort le 8 août 2023 dans la même ville, est un auteur-compositeur-interprète, musicien de rock et de folk américain."
    )
]
