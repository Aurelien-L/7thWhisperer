//
//  BarrerechercheFilm.swift
//  7thWhisperer
//
//  Created by apprenant95 on 07/11/2024.
//

import SwiftUI

struct BarrerechercheFilm: View {
    @State var searchText = ""
    
    @State private var showSettings: Bool = false
    // var utilisateurs = [Movie_Mingle, Tea_Baggins, Donny_Jepp, Mr_Anderson, Keke, Hobbit, sylvestre]
    
    
    @State private var showInfosFilm: Bool = false
    
    @State var selectedProgram: Programme
    
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
                    ForEach(filteredProgrammes) { program in
                        VStack{
                            Button(action: {
                                selectedProgram = program
                                showInfosFilm.toggle()
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                                        .foregroundStyle(.black)
                                        .opacity(0.6)
                                        .padding()
                                        .frame(width: 400, height: 250)
                                    HStack{
                                        
                                        Image(program.affiche)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 170.0)
                                            .shadow(color: .black, radius: 10, x: 5, y: 5)
                                        
                                        Spacer()
                                        VStack{
                                            Text(program.titre)
                                                .font(.system(size: 16))
                                                .bold()
                                            
                                            Text(program.synopsis)
                                                .font(.system(size: 12))
                                                .padding(0.5)
                                                .lineLimit(3)
                                        }
                                    } .foregroundStyle(.white)
                                        .padding(40)
                                }
                            })
                        }
                        
                        
                            
                        }
                        
                    }
                }.fullScreenCover(isPresented: $showInfosFilm) {
                    infos_films(program: selectedProgram)
            }
            .listStyle(.plain)
        }
        
    }
    
    
    var filteredProgrammes: [Programme] {
        if searchText.isEmpty {
            return allPrograms
        } else {
            return allPrograms.filter { program in
                program.titre.lowercased().contains(searchText.lowercased())
            }
        }
    }
}


#Preview {
    BarrerechercheFilm(selectedProgram: allPrograms[1])
}
