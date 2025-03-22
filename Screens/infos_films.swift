//
//  infos_films.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//

import SwiftUI

struct infos_films: View {
    @Environment(\.dismiss) var dismiss
    
    var program: Programme
    
    @State private var showAddAvis: Bool = false
    @State private var dejaVu = false
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Color(.principal)
                    .ignoresSafeArea(.all)
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 350, height: 700)
                            .foregroundColor(.white)
                            .shadow(color: .black.opacity(0.5), radius: 8, x: 0, y: 5)
                            .padding()
                        
                        Spacer()
                        VStack(alignment : .center ,spacing: 15) {
                            HStack{
                                Image(program.affiche)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 140, height: 180)
                                    .clipped()
                                    .padding(.top, 10)
                                    .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 2)
                                
                                ZStack{
                                    
                                    Button(action: {
                                        dejaVu.toggle()
                                    }, label: {
                                        ZStack {
                                            Circle()
                                                .frame(width: 30)
                                                .foregroundStyle(dejaVu ? Color.green : Color.white) // Changer la couleur ici
                                                .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 2)
                                            
                                            Image(systemName: "eye")
                                                .font(.system(size: 15))
                                                .bold()
                                                .foregroundStyle(dejaVu ? Color.white : Color.black)
                                        }
                                    }).offset(x: 75, y: -95)
                                    
                                    VStack(alignment: .leading){
                                        
                                        
                                        if program.titre.count < 40 {
                                            Text(program.titre)
                                                .font(.system(size: 16))
                                                .bold()
                                                .foregroundStyle(.black)
                                                .padding(.bottom, 5)
                                        } else {
                                            Text(program.titre)
                                                .font(.system(size: 12))
                                                .bold()
                                                .foregroundStyle(.black)
                                                .padding(.bottom, 5)
                                        }
                                        
                                        Text(program.annee.description)
                                            .font(.system(size: 12))
                                            .foregroundStyle(.black)
                                        Text("2h58m")
                                            .font(.system(size: 12))
                                            .foregroundStyle(.black)
                                            .padding(.bottom, 10)
                                        
                                        HStack(alignment: .top){
                                            Text("Genre :")
                                                .bold()
                                            VStack(alignment: .leading) {
                                                ForEach(program.genres, id: \.self){ genre in
                                                    Text(genre.rawValue)
                                                }
                                            }
                                        } .font(.system(size: 12))
                                            .foregroundStyle(.black)
                                            .padding(.bottom, 10)
                                        
                                        HStack(alignment: .center, spacing: 15){
                                            Spacer()
                                            
                                            ForEach(program.plateform, id: \.self){ plateforme in
                                                Image(plateforme)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 50, height: 25)
                                                    .clipped()
                                            }
                                            
                                            Spacer()
                                        }
                                    }
                                    
                                }.frame(width: 160)
                                
                                
                                
                            }
                            
                            VStack(alignment: .leading) {
                                HStack{
                                    Text("Realisateurs :")
                                        .bold()
                                    ForEach(getReal(programme: program)){ real in
                                        Text(real.name)
                                    }
                                    Spacer()
                                } .font(.system(size: 12))
                                    .foregroundStyle(.black)
                                
                                HStack(alignment: .top){
                                    Text("Acteurs :")
                                        .bold()
                                    VStack(alignment: .leading) {
                                        ForEach(getActor(programme: program)){ actor in
                                            Text(actor.name)
                                        }
                                        Text("...")
                                    }
                                } .font(.system(size: 12))
                                    .foregroundStyle(.black)
                                
                            }.frame(width: 320)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.black)
                                    .opacity(0.6)
                                    .frame(width: 320, height: 120)
                                    .overlay(
                                        ScrollView {
                                            Text(program.synopsis)
                                                .multilineTextAlignment(.leading)
                                                .padding(.all, 10)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .font(.system(size: 14))
                                                .foregroundStyle(.white)
                                        })
                            }
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 320, height: 220)
                                    .foregroundColor(.black)
                                    .opacity(0.6)
                                
                                TabView{
                                    
                                    ForEach(getReviewsByProgram(programme: program)){ review in
                                        
                                        NavigationLink(destination: Review(item: review, user: review.userName),
                                                       label: { avis_infos_film(avisUser: review) })
                                        
                                    }
                                    
                                }.tabViewStyle(.page)
                                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                                    .frame(width: 310, height: 210)
                                
                                Button(action: {
                                    showAddAvis.toggle()
                                }, label: {
                                    ZStack {
                                        Circle()
                                            .frame(width: 50)
                                            .foregroundStyle(.white)
                                            .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 2)
                                        
                                        Image(systemName: "plus")
                                            .font(.system(size: 20))
                                            .bold()
                                            .foregroundStyle(.black)
                                    }
                                }).offset(x: 140, y: 100)
                                    .sheet(isPresented: $showAddAvis) {
                                        addAvis()
                                            .presentationDetents([.fraction (0.7)])
                                    }
                                
                            }
                            
                        }
                        
                        Spacer()
                        
                        
                    }
                    
                }
            }
        }
        
        
        Button("Retour") {
            dismiss()
            
        }.onAppear()
        
        
    }
    
    
}


#Preview {
    infos_films(program: allPrograms.first!)
}
