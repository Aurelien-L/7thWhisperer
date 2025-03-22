//
//  ProfilTop.swift
//  7thWhisperer
//
//  Created by apprenant95 on 25/10/2024.
//
import SwiftUI

struct ProfilTop: View {
    
    @State private var showSettings: Bool = false
    @State var  backgroundColor = Color.principal
    @Binding var userProfile: Utilisateur

    
    var body: some View{
        
       
            
           
            
            ZStack{
                backgroundColor.ignoresSafeArea()
                
                
                VStack{
                    
                    BlocBanniere(userProfile: $userProfile)
                    
                    ScrollView{
                        
                        BlocTop(userProfile: $userProfile)
                            .padding(.top, 20)
                    }
                    Spacer()
                    
                }
            
            
        }
    }
}
    

#Preview {
    ProfilTop(userProfile: .constant(Keke))
}
