//
//  PageControlView.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//

import SwiftUI

struct PageControlView: View {
    
    @State private var showSettings: Bool = false

    @State var userProfile: Utilisateur
    
    var body: some View {
            TabView {
                ProfilAvis(userProfile: $userProfile)
                ProfilTop(userProfile: $userProfile)
                
            }
            .tabViewStyle(.page)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action : {
                        showSettings.toggle()
                        
                    }, label : { Image(systemName: "gear").foregroundStyle(.white) })
                    .fullScreenCover(isPresented: $showSettings) {
                        Parametres()
                    } .navigationBarTitle("Mon profil")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        
    }
}

#Preview {
    PageControlView(userProfile: utilisateurs[0])
}
