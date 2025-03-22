//
//  Parametres.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 29/10/2024.
//

import SwiftUI

struct Parametres: View {
    
    @Environment(\.dismiss) var dismiss
    
  
    
    
    var body: some View {
        
                       
        NavigationStack {
            List{
                    Section(header: Text("Paramètres de compte")){
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Modifier mon pseudo")
                        })
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Modifier mon mot de passe")
                        })
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Modifier mon adresse e-mail")
                        })
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Passer le compte en privé / public")
                        })
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Se déconnecter")
                        })
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Supprimer le compte")
                                .foregroundStyle(.red)
                        })
                        
                    }
                    
                    
                    Section(header: Text("Paramètres de l'application")) {
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Changer le thème")
                        })
                        
                        NavigationLink(destination: Parametres(), label: {
                            Text("Modifier la langue")
                        })
                        
                    }
                    
                .navigationTitle("Paramètres")
       
            }
        }
        
        
        Button(action: {
            dismiss()
        }, label: {
            Text("Appliquer")
        })
    }
}

#Preview {
    Parametres()
}
