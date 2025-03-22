//
//  BlocBanniere.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//
import SwiftUI

struct BlocBanniere: View {
    
    
    @Binding var userProfile: Utilisateur
     
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                Image(userProfile.banner)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 150)         .clipped()
                    .padding(.bottom, -13.0)
                //.opacity(0.5)
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(1)]), startPoint: .center, endPoint: .top)
                    )
                
                
                HStack {
                    
                    Image(userProfile.photoProfil)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .padding(.leading, 20)
                        .padding(.trailing, 5)
                    
                    
                    VStack(alignment: .center) {
                        
                        
                        if userProfile.username.rawValue.count < 10 {
                            HStack {
                                Text(userProfile.username.rawValue)
                                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                Text(getBadge(badge: userProfile.badge))
                                    .font(.system(size: 35))
                            }

                        } else {
                            HStack{
                                Text(userProfile.username.rawValue)
                                    .font(.system(size: 22))
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                Text(getBadge(badge: userProfile.badge))
                                    .font(.system(size: 35))
                            }
                        }
                        
                        
                    } //.padding([.bottom, .trailing], 30.0)
                    
                    Spacer()
                    if isMyProfile(user: userProfile) {
                        NavigationLink(
                            destination: PersonnalisationProfil(userProfile: $userProfile),
                            label: {
                                Image(systemName: "pencil")
                                    .foregroundStyle(.black)
                                    .font(.largeTitle)
                                    .padding(30)
                            }
                        )
                    } else {
                        AddFriend()
                            .padding(.trailing, 15)
                    }
                    
                }.frame(width: 400)
            }
        }
    }
}
#Preview {
    NavigationStack {
        BlocBanniere(userProfile: .constant(utilisateurs[0]))
    }
}
