//
//  List searchbarprofil.swift
//  7thWhisperer
//
//  Created by apprenant95 on 05/11/2024.
//

import SwiftUI

struct List_searchbarprofil: View {
    var utilisateur : Utilisateur
    var body: some View {
        HStack {
            Image(utilisateur.photoProfil)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
     //       VStack(alignment: .leading) {
                Text(utilisateur.username.rawValue)
                    .font(.headline)
            
            Spacer()
                Text(getBadge(badge: utilisateur.badge))
                .font(.system(size: 30))
      //      }
            
        }.frame(width: 320)
        
    }
}

#Preview {
    List_searchbarprofil(utilisateur: utilisateurs[0])
}
