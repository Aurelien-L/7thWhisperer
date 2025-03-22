//
//  ContentView.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 25/10/2024.
//

import SwiftUI



struct ContentView: View {
    
    init() {
        // Configuration de la NavigationBar
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = UIColor(Color("BarsColor"))
        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.white] // Couleur du titre
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white] // Couleur du titre grand
        
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
        
        
        // Configuration de la TabBar
        let tabAppearance = UITabBarAppearance()
        tabAppearance.configureWithOpaqueBackground()
        tabAppearance.backgroundColor = UIColor(Color("BarsColor"))
        tabAppearance.stackedLayoutAppearance.selected.iconColor = UIColor(Color(.principal)) // Couleur de l'icône sélectionnée
        tabAppearance.stackedLayoutAppearance.normal.iconColor = UIColor(Color(.white)) // Couleur de l'icône non sélectionnée
        
        UITabBar.appearance().standardAppearance = tabAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabAppearance
        
        UISearchBar.appearance().overrideUserInterfaceStyle = .dark

        
    }
    
    @State private var showSettings: Bool = false
    
    var body: some View {
        
        VStack {
            
            TabView {
                Recommandations()
                    .tabItem {
                        Label("Whisper", systemImage: "movieclapper")
                    }
                
                PageActusView()
                    .tabItem {
                        Label("Actu", systemImage: "newspaper")
                    }
                
                ProfilView()
                    .tabItem {
                        Label("Profil", systemImage: "person.crop.circle")
                    }
                
                sheetResearch(program: allPrograms[0])
                    .tabItem {
                        Label("Recherche", systemImage: "magnifyingglass")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
