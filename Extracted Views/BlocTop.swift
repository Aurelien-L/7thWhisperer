//
//  BlocTop.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//
import SwiftUI

struct BlocTop: View {
    
    @Binding var userProfile: Utilisateur

    //var textTop: String
    @State private var modalSaerch = false
    
    
    var body: some View{
        
        
        VStack  {
            
            HStack (){
                Text("Top de tous les temps")
                    .font(.system(size: 25))
                    
                Spacer()
                
                if isMyProfile(user: userProfile) {
                    NavigationLink(
                        destination: ProfilTopChoice(userProfile: $userProfile),
                        label: {
                            Image(systemName: "pencil")
                                .font(.system(size: 30))
                                .foregroundStyle(.black)
                            
                        }
                    )
                }
            }.frame(width: 350)
            
            HStack{
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                        .frame(width: 380, height: 180)
                        
                        .opacity(0.7)
                    
                    HStack(spacing: 30){
                        
                        if isMyProfile(user: userProfile) == true {
                        
                            Image("afficheHP1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("SDA")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("GOT")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                            
                        } else {
                            
                            Image("friends")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("jumanji")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("starwarsVI")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        }
                        
                        
                    }
                    
                }
                
            }
        }
        VStack {
            
            HStack(){
                Text("Top du moment")
                    .font(.system(size: 25))
                    .padding(.top, 25)
                
                Spacer()
                
                if isMyProfile(user: userProfile) {
                    NavigationLink(
                        destination: ProfilTopChoice(userProfile: $userProfile),
                        label: {
                            Image(systemName: "pencil")
                                .font(.system(size: 30))
                                .foregroundStyle(.black)
                            
                        }
                    )
                }
            }.frame(width: 350)
            
            HStack{
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                        .frame(width: 380, height: 180)
                        .opacity(0.7)
                    
                    HStack(spacing: 30){
                        
                        if isMyProfile(user: userProfile) == true {
                        
                            Image("Miss Americana")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("andor")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("Lost")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                            
                        } else {
                            
                            Image("theWire")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("idiocracy")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        
                        Image("cowboyBebop")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 150)
                            .cornerRadius(25)
                            
                        }
                        
                        
                    }
                    
                }
                
            }
        }
    }
    
}
    
    #Preview {
        NavigationStack {
            BlocTop(userProfile: .constant(Keke))
        }
       
    }
