

import SwiftUI

struct BarreRechercheProfil: View {
    @State var searchText = ""
    @State var backColor: Color = .principal
    @State private var showSettings: Bool = false
    // var utilisateurs = [Movie_Mingle, Tea_Baggins, Donny_Jepp, Mr_Anderson, Keke, Hobbit, sylvestre]
    
    var body: some View {
        NavigationStack {
            ZStack {
                backColor
                
                VStack {
                    // Barre de recherche
                    TextField("Rechercher", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    ScrollView{
                        // Liste des utilisateurs filtrÃ©s
                        ForEach(filteredUtilisateurs) { utilisateur in
                            NavigationLink(destination: PageControlView(userProfile: utilisateur)
                                           ,label: {
                                
                                VStack{
                                    ZStack{
                                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                            .frame(width: 350,height: 80)
                                            .foregroundStyle(.white)
                                            .shadow(radius: 20)
                                            .opacity(0.8)
                                            .padding()
                                        
                                        
                                        
                                        List_searchbarprofil(utilisateur: utilisateur)
                                            .foregroundColor(.black)
                                        
                                        
                                    }
                                }
                                
                            })
                        }
                    }
                }
                .listStyle(.plain)
            }
        }
    }
    
    
    var filteredUtilisateurs: [Utilisateur] {
        if searchText.isEmpty {
            return utilisateurs
        } else {
            return utilisateurs.filter { utilisateur in
                utilisateur.username.rawValue.lowercased().contains(searchText.lowercased())
            }
        }
    }
}


#Preview {
    BarreRechercheProfil()
}
