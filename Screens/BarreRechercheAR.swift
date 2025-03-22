//
//  BarreRechercheAR.swift
//  7thWhisperer
//
//  Created by apprenant95 on 07/11/2024.
//

import SwiftUI

struct BarreRechercheAR: View {
    @State private var showActoReal: Bool = false
    
    @State var searchText = ""
    
    @State private var showSettings: Bool = false
    // var utilisateurs = [Movie_Mingle, Tea_Baggins, Donny_Jepp, Mr_Anderson, Keke, Hobbit, sylvestre]
    
    @State var selectedActor: Actor = actors[0]
    
    var body: some View {
            ZStack {
                Color.principal
                
                VStack {
                    // Barre de recherche
                    TextField("Rechercher", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    ScrollView{
                        // Liste des utilisateurs filtrÃ©s
                        ForEach(filteredAR) { acteur in
                            VStack{
                                ZStack{
                                    
                                    Button(action: {
                                        selectedActor = acteur
                                        showActoReal.toggle()
                                        // Relié aux pages films
                                    }
                                           ,label: {
                                        
                                        
                                        
                                        ZStack{
                                            VStack{
                                                RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                                                    .foregroundStyle(.black)
                                                    .opacity(0.6)
                                                    .padding()
                                                    .frame(width: 400, height: 200)
                                            }
                                            HStack{
                                                
                                                Image(acteur.portrait)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 80, height: 160)
                                                    .shadow(color: .gray, radius: 20, x: 10, y: 10)
                                                    .clipShape(Circle())
                                                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                                                
                                                VStack{
                                                    Text(acteur.name ).font(.title)
                                                    Text(acteur.bio)
                                                        .frame(width: 200.0, height: 50.0)
                                                }
                                            } .foregroundStyle(.white)
                                        
                                            // coller cellule réal
                                            
                                        }
                                    })
                                    
                                    
                                   /* List_searchAR(acteur:acteur)
                                        .foregroundColor(.black)*/
                                    
                                    
                                }
                            }
                        }
                        
                    }.fullScreenCover(isPresented: $showActoReal) {
                        sheetActoReal(acteur: selectedActor)
                        
                    }
                }
                .listStyle(.plain)
            }
            .fullScreenCover(isPresented: $showSettings) {
                Parametres()
            }
    }
    
    
    var filteredAR: [Actor] {
        if searchText.isEmpty {
            return actors
        } else {
            return actors.filter { acteur in
                acteur.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
}



#Preview {
    BarreRechercheAR()
}
