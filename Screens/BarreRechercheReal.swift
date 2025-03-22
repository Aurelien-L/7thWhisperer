//
//  BarreRechercheReal.swift
//  7thWhisperer
//
//  Created by apprenant95 on 07/11/2024.
//

import SwiftUI

struct BarreRechercheReal: View {
    
        @State private var showReal: Bool = false
        
        @State var searchText = ""
        
        @State private var showSettings: Bool = false
        // var utilisateurs = [Movie_Mingle, Tea_Baggins, Donny_Jepp, Mr_Anderson, Keke, Hobbit, sylvestre]
        
        @State var selectedReal: Realisateur = reals[9]
        
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
                            ForEach(filteredReals) { real in
                                VStack{
                                    ZStack{
                                        
                                        Button(action: {
                                            selectedReal = real
                                            showReal.toggle()
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
                                                    
                                                    Image(real.photo)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 80, height: 160)
                                                        .shadow(color: .gray, radius: 20, x: 10, y: 10)
                                                        .clipShape(Circle())
                                                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                                                    
                                                    VStack{
                                                        Text(real.name ).font(.title)
                                                        Text(real.bio)
                                                            .frame(width: 200.0, height: 50.0)
                                                    }
                                                } .foregroundStyle(.white)
                                            
                                            }
                                        })
                                        
                                        
                                       /* List_searchAR(acteur:acteur)
                                            .foregroundColor(.black)*/
                                        
                                        
                                    }
                                }
                            }
                            
                        }.fullScreenCover(isPresented: $showReal) {
                            SheetReals(real: selectedReal)
                            
                        }
                    }
                    .listStyle(.plain)
                }
                .fullScreenCover(isPresented: $showSettings) {
                    Parametres()
                }
        }
        
        
        var filteredReals: [Realisateur] {
            if searchText.isEmpty {
                return reals
            } else {
                return reals.filter { real in
                    real.name.lowercased().contains(searchText.lowercased())
                }
            }
        }
    }



#Preview {
    BarreRechercheReal()
}
