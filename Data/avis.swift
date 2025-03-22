//
//  avis.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 29/10/2024.
//

import Foundation

struct Avis: Identifiable{
    
    let id = UUID()
    let programTitle : Programme
    let programPoster : String //
    let photoProfil : String //
    let userName : Utilisateur
    let rating : Int
    let reviewDate : String
    let review : String
}


var rating = [Int](1...10)


var avisTableau : [Avis] = [
    Avis( programTitle: Mrs_Doubtfire,
          programPoster: "mme_doubtfire",
          photoProfil: "Donny_Jepp",
          userName: Donny_Jepp,
          rating: 7,
          reviewDate: "09/12/23",
          review: "Une excellente comédie familiale, pas toujours très légère mais jamais vulgaire et parfois touchante. Robin Williams est déchainé. Un très bon moment a passer."),
    
    Avis( programTitle: T_L_M,
          programPoster: "t_l_m",
          photoProfil: "movie_mingle",
          userName: Movie_Mingle,
          rating: 10,
          reviewDate: "19/09/24",
          review: "When I heard this film was going to be released I was impressed by the amount of talent put in by the director Michael Scott. I would like to say this film gets not enough attention for its visually captivating cinematography and motivating story."),
    
    Avis( programTitle: Fight_Club,
          programPoster: "fightClub",
          photoProfil: "Tea_Baggins",
          userName: Tea_Baggins,
          rating: 9,
          reviewDate: "10/11/24",
          review: "First rule of the Fight Club : We don't talk about the Fight Club"),
    
    Avis( programTitle: Andor,
          programPoster: "andor",
          photoProfil: "MAnderson",
          userName: Mr_Anderson,
          rating: 9,
          reviewDate: "30/11/24",
          review: "Fous les ingrédients du grand cinéma, du fond, de la forme. Contrairement aux autres Star Wars, cette série donne de vrais visages à l'Empire. Les personnages sont complexes, que ce soit dans l'Empire ou dans la rébellion, ce sont des êtres humains qui s'affrontent, qui s'entraident, qui s'aiment ou se déchirent. Il en résulte un contenu très riche, le tout étant très bien orchestré, avec de belles images, de beaux sons, et un rythme qui donne du sens. Je ne me suis pas ennuyé une seule seconde. Voilà un série qui réhausse l'Univers Star Wars, loin du manichéisme enfantin habituel propre à Disney."),
    
    Avis( programTitle: Harry_Potter,
          programPoster: "afficheHP1",
          photoProfil: "Keke",
          userName: Keke,
          rating: 9,
          reviewDate: "01/08/24",
          review: " Harry Potter à l'école des sorciers est un film enchanteur qui nous plonge dans le monde magique créé par J.K. Rowling. L'histoire captivante de Harry, un jeune garçon découvrant ses pouvoirs et son destin à Poudlard, est magnifiquement portée à l'écran. Les performances des acteurs, notamment Daniel Radcliffe, Emma Watson et Rupert Grint, sont remarquables. Les effets spéciaux et la direction artistique immersives transportent les spectateurs dans un univers de magie et d'aventure. Un classique intemporel qui émerveille petits et grands. 🎬✨"),
    
    Avis( programTitle: Seigneur_des_Anneaux,
          programPoster: "SDA",
          photoProfil: "Hobbit",
          userName: Hobbit,
          rating: 10,
          reviewDate: "01/08/24",
          review: " Un film incroyable, qui fait rêver, fidèle à sa réputation, un chef d’oeuvre! Il y a un avant, et un après ce film, j’en ai perdu mon Précieux."),
    
    Avis( programTitle: Vie_sur_Planete,
          programPoster: "La Vie sur notre Planète",
          photoProfil: "sylvestre",
          userName: sylvestre,
          rating: 2,
          reviewDate: "15/08/24",
          review: "Trop de chiens."),
    
    Avis( programTitle: Marche_Empereur,
          programPoster: "marche_de_lempereur",
          photoProfil: "sylvestre",
          userName: sylvestre,
          rating: 10,
          reviewDate: "22/08/24",
          review: "Ne pas visionner le ventre vide, trop d'envies de KFC"),
    
    Avis( programTitle: Star_Wars_VI,
          programPoster: "starwarsVI",
          photoProfil: "movie_mingle",
          userName: Movie_Mingle,
          rating: 9,
          reviewDate: "21/01/24",
          review: "Star Wars: Episode VI - Le Retour du Jedi conclut en apothéose la trilogie originale de George Lucas. Le film mélange parfaitement action, émotion et épique. Le retour de Luke Skywalker, prêt à affronter son destin, est poignant. Les scènes de bataille, qu'elles soient terrestres ou spatiales, sont impressionnantes pour l'époque et restent captivantes aujourd'hui. Les Ewoks apportent une touche de légèreté bienvenue. Un final puissant qui boucle l'arc des personnages de manière satisfaisante, tout en laissant les fans rêveurs et excités pour les aventures futures. "),
    
    Avis( programTitle: Star_Wars_VI,
          programPoster: "starwarsVI",
          photoProfil: "Donny_Jepp",
          userName: Donny_Jepp,
          rating: 4,
          reviewDate: "14/07/24",
          review: "Star Wars: Episode VI - Le Retour du Jedi souffre d'un coup marketing flagrant avec l'introduction des Ewoks, clairement destinés à vendre des peluches. L'intrigue peine à cacher cette manœuvre commerciale, au détriment de la profondeur narrative."),
    
    Avis(
        programTitle: Breaking_Bad,
        programPoster: "Breaking Bad",
        photoProfil: "movie_mingle",
        userName: Movie_Mingle,
        rating: 8,
        reviewDate: "10/11/24",
        review: "Breaking Bad est une série magistralement construite, avec des performances exceptionnelles de Bryan Cranston et Aaron Paul. L'évolution de Walter White, de professeur de chimie doux à seigneur de la drogue impitoyable, est aussi captivante qu'inquiétante."
    ),
    
    Avis(
        programTitle: Emily_in_Paris,
        programPoster: "Emily in Paris",
        photoProfil: "MAnderson",
        userName: Mr_Anderson,
        rating: 6,
        reviewDate: "10/11/24",
        review: "Emily in Paris est une comédie romantique légère et colorée. Bien que les clichés sur la France puissent agacer certains, la série reste agréable à regarder grâce à son charme et à ses paysages parisiens pittoresques."
    ),
    
    Avis(
        programTitle: Game_of_Thrones,
        programPoster: "GOT",
        photoProfil: "Hobbit",
        userName: Hobbit,
        rating: 1,
        reviewDate: "10/11/24",
        review: "Ah, mon précieux Game of Thrones ! Tant de promesses, mais cette fin, oh non ! Bran sur le trône ? Ridicule, oui ! Les ténèbres des batailles, nous avons dû plisser les yeux, oui... précieux personnages gâchés ! Gollum n'est pas content, non, non..."
    ),
    
    Avis(
        programTitle: Lost,
        programPoster: "Lost",
        photoProfil: "Tea_Baggins",
        userName: Tea_Baggins,
        rating: 7,
        reviewDate: "10/11/24",
        review: "Lost a captivé le public avec ses mystères intrigants et ses personnages profondément développés. Bien que le final ait divisé les fans, la série reste un monument de la télévision pour son approche novatrice et ses rebondissements."
    ),
    
    Avis(
        programTitle: Miss_Americana,
        programPoster: "Miss Americana",
        photoProfil: "Keke",
        userName: Keke,
        rating: 7,
        reviewDate: "10/11/24",
        review: "Ah, Taylor Swift, c'est ma diva ! Ses chansons, elles touchent direct au cœur, comme un lancer parfait dans un jeu vidéo. Chaque album, c'est un nouveau niveau à découvrir, plein de surprises et d'émotions. J'écoute ça en boucle, et ça me donne toujours des frissons. Swiftie à fond ! 🎤💖"
    ),
    
    Avis(
        programTitle: Sugar_Man,
        programPoster: "Sugar Man",
        photoProfil: "Keke",
        userName: Keke,
        rating: 8,
        reviewDate: "10/11/24",
        review: "Ah, Sugar Man, c'est une vraie légende ! Découvrir son histoire, c'est comme trouver un trésor caché. Ses chansons, elles te transportent dans un autre monde, avec cette voix unique et poignante. Un artiste oublié, redécouvert, et une musique qui te touche en plein cœur. Respect éternel pour Sixto Rodriguez !"
    ),
    
    Avis(
        programTitle: The_Walking_Dead,
        programPoster: "TWD",
        photoProfil: "Donny_Jepp",
        userName: Donny_Jepp,
        rating: 7,
        reviewDate: "10/11/24",
        review: "The Walking Dead est une série post-apocalyptique intense qui explore la survie et la condition humaine dans un monde infesté de zombies. Les personnages évoluent dans un environnement impitoyable, offrant des moments de tension et de drame mémorables."
    ),
    
    Avis( programTitle: Harry_Potter,
              programPoster: "afficheHP1",
              photoProfil: "movie_mingle",
              userName: Movie_Mingle,
              rating: 8,
              reviewDate: "15/10/24",
              review: "Un voyage magique qui capture l'essence de l'amitié, du courage et de la croissance. Bien que les effets spéciaux soient impressionnants, je trouve que certains des premiers films manquent de la profondeur que les derniers ont atteinte. Néanmoins, c'est toujours un chef-d'œuvre pour les enfants et les adultes."),
        
        
        Avis( programTitle: Andor,
              programPoster: "andor",
              photoProfil: "Tea_Baggins",
              userName: Tea_Baggins,
              rating: 10,
              reviewDate: "01/11/24",
              review: "Les fans de Star Wars apprécieront cet ajout sombre et complexe à la franchise. Une série brillante avec des personnages auxquels on peut vraiment s'attacher. À voir absolument."),
        
        Avis( programTitle: Breaking_Bad,
              programPoster: "Breaking Bad",
              photoProfil: "Keke",
              userName: Keke,
              rating: 9,
              reviewDate: "12/11/24",
              review: "Breaking Bad est une série magistralement construite. La transformation de Walter White est captivante et inquiétante. L'écriture est serrée et les performances exceptionnelles. Un véritable rollercoaster émotionnel."),
        
        Avis( programTitle: Game_of_Thrones,
              programPoster: "GOT",
              photoProfil: "movie_mingle",
              userName: Movie_Mingle,
              rating: 5,
              reviewDate: "05/10/24",
              review: "Les premières saisons étaient phénoménales, mais la dernière saison a été une déception. Elle m'a semblé précipitée et manquait de la profondeur qui avait fait le succès des premières saisons. La fin, en particulier, m'a laissé sur ma faim."),
        
        Avis( programTitle: The_Walking_Dead,
              programPoster: "TWD",
              photoProfil: "sylvestre",
              userName: sylvestre,
              rating: 2,
              reviewDate: "25/10/24",
              review: "The Walking Dead? Trop d'humains bruyants et encore plus de zombies! À mon goût, il manque clairement des scènes avec des chats. La tension est palpable, mais je préfère les moments de calme pour mes siestes. Miaou."),
        
        Avis( programTitle: Star_Wars_VI,
              programPoster: "starwarsVI",
              photoProfil: "Donny_Jepp",
              userName: Donny_Jepp,
              rating: 8,
              reviewDate: "20/10/24",
              review: "Une conclusion épique pour la trilogie, même si elle semble un peu datée à certains moments. L'action est palpitante, et l'histoire se termine bien, mais quelques scènes auraient mérité plus de développement."),
        
        Avis( programTitle: Mrs_Doubtfire,
              programPoster: "mme_doubtfire",
              photoProfil: "Hobbit",
              userName: Hobbit,
              rating: 10,
              reviewDate: "05/10/24",
              review: "Mrs. Doubtfire, c'est drôle, oui, mais aussi triste, très triste... Robin Williams, il joue une dame, un mensonge ! Mais elle aide, elle aime, et ça, ça touche Gollum. Trop de rires, trop de larmes... compliqué, mais Gollum aime un peu... juste un peu."),
        
        Avis( programTitle: Lost,
              programPoster: "Lost",
              photoProfil: "movie_mingle",
              userName: Movie_Mingle,
              rating: 6,
              reviewDate: "30/10/24",
              review: "Lost est un mystère captivant, mais la façon dont cela s'est terminé m'a laissé un peu déçu. Bien que le voyage soit palpitant, la fin m'a semblé forcée et insatisfaisante. Pourtant, c'était une série révolutionnaire pour son époque."),
        
        Avis( programTitle: Sugar_Man,
              programPoster: "Sugar Man",
              photoProfil: "Tea_Baggins",
              userName: Tea_Baggins,
              rating: 9,
              reviewDate: "18/10/24",
              review: "Un documentaire incroyable sur une légende musicale oubliée. L'histoire de Sixto Rodriguez est inspirante, et sa musique est unique et poignante. Un artiste oublié, redécouvert, et une musique qui touche en plein cœur. Respect éternel pour Sixto Rodriguez !")
    
]

