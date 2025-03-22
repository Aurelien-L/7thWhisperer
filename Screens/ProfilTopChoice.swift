//
//  ProfilTopChoice.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//

import SwiftUI

struct ProfilTopChoice: View {
    @Binding var userProfile: Utilisateur

    
    @State private var showSettings: Bool = false
    @State var backgroundColor = Color.principal
    @State private var modalSaerch = false

    var imageTop = false
    
    var body: some View{
        
        
        
            ZStack{
              backgroundColor.ignoresSafeArea()
                
                VStack{
                   
                  BlocBanniere(userProfile: $userProfile)
                    ScrollView{
                        
//                        BlocTop(userProfile: $userProfile)
//                            .padding(.top, 15)
                        
                        
                        
                     /*   HStack(spacing: 30){
                            
                            Button(action: {
                                
                                modalSaerch.toggle()
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.gray)
                                        .opacity(0.6)
                                        .frame(width: 100, height: 150)
                                        .cornerRadius(25)
                                        .opacity(0.5)
                                    
                                    Text("+")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundStyle(.black)
                                        .shadow(radius: 10)
                                }
                            })
                            .sheet(isPresented: $modalSaerch) {
                                ChoiceFilm()
                                    .presentationDetents([.height(200)])
                            }
                            
                            Button(action: {
                                
                                modalSaerch.toggle()
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.gray)
                                        .opacity(0.6)
                                        .frame(width: 100, height: 150)
                                        .cornerRadius(25)
                                        .opacity(0.5)
                                    
                                    Text("+")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundStyle(.black)
                                        .shadow(radius: 10)
                                }
                            })
                            .sheet(isPresented: $modalSaerch) {
                                ChoiceFilm()
                                    .presentationDetents([.height(200)])
                            }
                            
                            Button(action: {
                                
                                modalSaerch.toggle()
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.gray)
                                        .opacity(0.6)
                                        .frame(width: 100, height: 150)
                                        .cornerRadius(25)
                                        .opacity(0.5)
                                    
                                    Text("+")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundStyle(.black)
                                        .shadow(radius: 10)
                                }
                            })
                            .sheet(isPresented: $modalSaerch) {
                                ChoiceFilm()
                                    .presentationDetents([.height(200)])
                            }
                        } */
                        
                        VStack  {
                            
                            HStack (){
                                Text("Top de tous les temps")
                                    .font(.system(size: 25))
                                Spacer()
                                
                            }.frame(width: 350)
                            
                            HStack{
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.white)
                                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                                        .frame(width: 380, height: 180)
                                        .opacity(0.7)
                                    
                                    HStack(spacing: 30){
                                            
                                            Button(action: {
                                        
                                              modalSaerch.toggle()
                                            }, label: {
                                                ZStack{
                                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                                        .foregroundStyle(.gray)
                                                        .opacity(0.6)
                                                        .frame(width: 100, height: 150)
                                                        .cornerRadius(25)
                                                        .opacity(0.5)
                                                    Text("+")
                                                        .font(.largeTitle)
                                                        .bold()
                                                        .foregroundStyle(.black)
                                                        .shadow(radius: 10)
                                                }
                                            })
                                            .sheet(isPresented: $modalSaerch) {
                                                ChoiceFilm()
                                                    .presentationDetents([.height(200)])
                                            }
                                          
                                            Button(action: {
                                        
                                              modalSaerch.toggle()
                                            }, label: {
                                                ZStack{
                                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                                        .foregroundStyle(.gray)
                                                        .opacity(0.6)
                                                        .frame(width: 100, height: 150)
                                                        .cornerRadius(25)
                                                        .opacity(0.5)
                                                    Text("+")
                                                        .font(.largeTitle)
                                                        .bold()
                                                        .foregroundStyle(.black)
                                                        .shadow(radius: 10)
                                                }
                                            })
                                            .sheet(isPresented: $modalSaerch) {
                                                ChoiceFilm()
                                                    .presentationDetents([.height(200)])
                                            }
                                            
                                            Button(action: {
                                        
                                              modalSaerch.toggle()
                                            }, label: {
                                                ZStack{
                                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                                        .foregroundStyle(.gray)
                                                        .opacity(0.6)
                                                        .frame(width: 100, height: 150)
                                                        .cornerRadius(25)
                                                        .opacity(0.5)
                                                    Text("+")
                                                        .font(.largeTitle)
                                                        .bold()
                                                        .foregroundStyle(.black)
                                                        .shadow(radius: 10)
                                                }
                                            })
                                            .sheet(isPresented: $modalSaerch) {
                                                ChoiceFilm()
                                                    .presentationDetents([.height(200)])
                                            }
                                            
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        .padding(.top, 20)
                        VStack {
                            
                            HStack(){
                                Text("Top du moment")
                                    .font(.system(size: 25))
                                    .padding(.top, 25)
                                
                                Spacer()
                                
                            }.frame(width: 350)
                            
                            HStack{
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.white)
                                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                                        .frame(width: 380, height: 180)
                                        .opacity(0.7)
                                    
                                    HStack(spacing: 30){
                                            
                                            Button(action: {
                                        
                                              modalSaerch.toggle()
                                            }, label: {
                                                ZStack{
                                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                                        .foregroundStyle(.gray)
                                                        .opacity(0.6)
                                                        .frame(width: 100, height: 150)
                                                        .cornerRadius(25)
                                                        .opacity(0.5)
                                                    Text("+")
                                                        .font(.largeTitle)
                                                        .bold()
                                                        .foregroundStyle(.black)
                                                        .shadow(radius: 10)
                                                }
                                            })
                                            .sheet(isPresented: $modalSaerch) {
                                                ChoiceFilm()
                                                    .presentationDetents([.height(200)])
                                            }
                                          
                                            Button(action: {
                                        
                                              modalSaerch.toggle()
                                            }, label: {
                                                ZStack{
                                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                                        .foregroundStyle(.gray)
                                                        .opacity(0.6)
                                                        .frame(width: 100, height: 150)
                                                        .cornerRadius(25)
                                                        .opacity(0.5)
                                                    Text("+")
                                                        .font(.largeTitle)
                                                        .bold()
                                                        .foregroundStyle(.black)
                                                        .shadow(radius: 10)
                                                }
                                            })
                                            .sheet(isPresented: $modalSaerch) {
                                                ChoiceFilm()
                                                    .presentationDetents([.height(200)])
                                            }
                                            
                                            Button(action: {
                                        
                                              modalSaerch.toggle()
                                            }, label: {
                                                ZStack{
                                                    RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                                        .foregroundStyle(.gray)
                                                        .opacity(0.6)
                                                        .frame(width: 100, height: 150)
                                                        .cornerRadius(25)
                                                        .opacity(0.5)
                                                    Text("+")
                                                        .font(.largeTitle)
                                                        .bold()
                                                        .foregroundStyle(.black)
                                                        .shadow(radius: 10)
                                                }
                                            })
                                            .sheet(isPresented: $modalSaerch) {
                                                ChoiceFilm()
                                                    .presentationDetents([.height(200)])
                                            }
                                            
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        
                    }
                    
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action : {
                        showSettings.toggle()
                        
                    }, label : { Image(systemName: "gear").foregroundStyle(.white) })
                    .fullScreenCover(isPresented: $showSettings) {
                        Parametres()
                    } .navigationBarTitle("Recommandations")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        
    }
}

#Preview {
    ProfilTopChoice(userProfile: .constant(Keke))
}
