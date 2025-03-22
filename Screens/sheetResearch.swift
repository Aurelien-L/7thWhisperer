//
//  sheetResearch.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//

import SwiftUI

struct sheetResearch: View {
    
    @State var searchText = ""
    @State var backColor: Color  = .principal
    @State private var showSettings: Bool = false
    var program : Programme
   
    var body: some View {
        
        
        NavigationStack {
                ZStack{
                    backColor
                    
                    TabView {
                        // relier a data profil
                        BarreRechercheProfil()
                        // relier a la page recherche movie
                        BarrerechercheFilm(selectedProgram: allPrograms[0])
                        // relier a celebs
                        BarreRechercheAR()
                        BarreRechercheReal()
                    }
                    .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                   
                    
                }
               
            
            .navigationTitle("Recherche")
            .fullScreenCover(isPresented: $showSettings) {
                Parametres()
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action : {
                        print("Pressed")
                        showSettings.toggle()
                        
                    }, label : { Image(systemName: "gear").foregroundStyle(.white) })
                    .navigationBarTitleDisplayMode(.inline)

                   
                        
                    
                }
            }
        }
    }
    
    
}

#Preview {
    sheetResearch(program: allPrograms[0])
}
