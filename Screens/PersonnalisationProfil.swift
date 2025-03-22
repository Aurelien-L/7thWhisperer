//
//  PersonnalisationProfil.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 29/10/2024.
//

import SwiftUI

struct PersonnalisationProfil: View {
    
    @Binding var userProfile: Utilisateur
    
    @State var  backgroundColor = Color.principal
    
    @State private var nomPseudo = ""
    var typeLieu = ["Votre Album", "Sur Internet", "Affiches de Film"]
    @State private var selectedImage = "Photo de Profil"
    @State private var selectedBanniere = "Banniere de Profil"
    
    
    
    
    
    var body: some View {
        
        VStack{
            BlocBanniere(userProfile: $userProfile)
            
            NavigationView {
                List {
                    
                    HStack{
                        Text("Pseudo")
                        Spacer()
                        TextField("Pseudo", text: $nomPseudo).multilineTextAlignment(.trailing)
                    }
                    
                    Picker("Modifier la photo de profil", selection: $selectedImage) {
                        ForEach(typeLieu, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    
                    Picker("Modifier la bannière", selection: $selectedBanniere) {
                        ForEach(typeLieu, id: \.self) {
                            Text($0)
                        }
                    }
                    
                        .navigationTitle("Paramètres du profil")
                    
                    
                }
            }
        }
    }
    
}

#Preview {
    NavigationView {
        PersonnalisationProfil(userProfile: .constant(utilisateurs[0]))
    }
}
