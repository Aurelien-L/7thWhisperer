//
//  filtres_reco.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//

import SwiftUI

struct filtres_reco: View {
    
//    init() {
//        // Configuration de l'apparence de la navigation
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        appearance.titleTextAttributes = [.foregroundColor: UIColor.black] // Couleur du titre
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black] // Couleur du titre grand
//        
//        // Appliquer l'apparence à la UINavigationBar
//        UINavigationBar.appearance().standardAppearance = appearance
//        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//    }
    
    
    @Environment(\.dismiss) var dismiss
    
    @State private var dejaVu = false
    
    
    var typeProgram = ["Film", "Série", "Documentaire"]
    @State private var selectedType = "Film"
    
    var genreProgram = ["Comédie", "Drame", "Comédie dramatique", "Thriller", "Action / Aventure", "Horreur", "Science-fiction", "Fantastique"]
    @State private var selectedGenre = "Comédie"
    
    
    var plateformeVOD = ["Netflix", "Disney+", "Prime Video"]
    @State private var selectedPlateforme = "Netflix"
    
    @State private var actorChoice = ""
    
    @State private var realChoice = ""
    
    var yearProgram = [0] + (1950...2024).reversed()
    @State private var selectedYear = 2024
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            Form(){
                Section(header: Text("")){
                    
                    Toggle("Programmes déjà vus", isOn: $dejaVu)
                    if dejaVu{
                        Text("déjà vu autorisé")
                    }
                    
                    Picker("Type", selection: $selectedType) {
                        ForEach(typeProgram, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Picker("Genre", selection: $selectedGenre) {
                        ForEach(genreProgram, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    HStack{
                        Text("Acteur")
                        Spacer()
                        TextField("Acteur", text: $actorChoice)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack{
                        Text("Réalisateur")
                        Spacer()
                        TextField("Réalisateur", text: $realChoice)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    
                    Picker("Plateforme", selection: $selectedPlateforme) {
                        ForEach(plateformeVOD, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    
                    Picker("Année", selection: $selectedYear) {
                        ForEach(yearProgram, id: \.self) { year in
                            Text(year == 0 ? "Aucune année" : "\(year)")
                                .tag(year == 0 ? nil : year) // Tagger avec nil pour aucune sélection
                        }
                    }.onAppear { selectedYear = 0 }
                }
            }.navigationTitle("Filtres")
        }
        
        
        Button(action: {
            dismiss()
        }, label: {
            Text("Filtrer")
        })
    }
}

#Preview {
    filtres_reco()
}
