//
//  Recommandations.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 25/10/2024.
//

import SwiftUI

struct Recommandations: View {
    
    
    @State private var offset: CGFloat = 0
    @State private var showSettings: Bool = false
    @State private var showFilters: Bool = false
    @State private var showInfosFilmA: Bool = false
    @State private var showInfosFilmC: Bool = false
    
    @State var recoAppli: Programme = getRandomProgram()
    @State var recoCommu: Programme = getRandomProgramByCommu()
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.principal)
                VStack {
                    
                    HStack(spacing: 0) {
                        Button(action: {
                            showInfosFilmA.toggle()
                        }, label: {
                            ZStack {
                                reco_film(program: recoAppli)
                                Image("logo_fond")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    .offset(x: -50, y: -110)
                            } .offset(x : 5)
                        }
                        )
                        
                        
                        Button(action: {
                            showInfosFilmC.toggle()
                        }, label: {
                            ZStack {
                                reco_film(program: recoCommu)
                                Image(getPPByProgram(program: recoCommu))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    .offset(x: 50, y: -110)
                            } .offset(x : -5)
                        })
                        
                    }
                    
                    
                    HStack(alignment: .top, spacing: 0) {
                        
                        Button(action: {
                            
                            playSound()
                            
                            recoAppli = getRandomProgram()
                            recoCommu = getRandomProgramByCommu()
                            
                            
                            withAnimation(.easeInOut(duration: 0.1)) {
                                offset = -10
                            }
                            withAnimation(.easeInOut(duration: 0.1).delay(0.1)) {
                                offset = 10
                            }
                            withAnimation(.easeInOut(duration: 0.1).delay(0.2)) {
                                offset = 0
                            }
                        }, label: {
                            Image("popcorn")
                                .resizable()
                                .frame(width: 160, height: 230)
                                .shadow(color: .black.opacity(0.5), radius: 8, x: 0, y: 5)
                                .padding()
                                .offset(x: offset)
                        })
                        
                        
                        
                        Button(action: {
                            showFilters.toggle()
                        }, label: {
                            ZStack {
                                Circle()
                                    .frame(width: 50)
                                    .foregroundStyle(.white)
                                    .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 2)
                                
                                Image(systemName: "slider.horizontal.3")
                                    .foregroundStyle(.black)
                            }
                        })
                        .sheet(isPresented: $showFilters) {
                            filtres_reco()
                                .presentationDetents([.fraction (0.8)])
                        }
                    }
                    .padding(.bottom, 30)
                }
                .fullScreenCover(isPresented: $showInfosFilmA) {
                    infos_films(program: recoAppli)
                }
                .fullScreenCover(isPresented: $showInfosFilmC) {
                    infos_films(program: recoCommu)
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
}

#Preview {
    Recommandations()
}
