//
//  List_searchAR.swift
//  7thWhisperer
//
//  Created by apprenant95 on 07/11/2024.
//

import SwiftUI

struct List_searchAR: View {
    @State private var showActoReal: Bool = false
    var acteur: Actor
   
       
        var body: some View {
            ScrollView{
                
                VStack{
                    Button(action: {
                        showActoReal.toggle()
                        // ReliÃ© aux pages films
                    }
                           ,label: {
                        
                        
                        
                        ZStack{
                            VStack{
                                RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                                    .foregroundStyle(.black)
                                    .opacity(0.6)
                                    .padding()
                                    .frame(width: 400, height: 200)
                            }
                            HStack{
                                
                                Image(acteur.portrait)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 160)
                                    .shadow(color: .gray, radius: 20, x: 10, y: 10)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                                VStack{
                                    Text(acteur.name ).font(.title)
                                    Text(acteur.bio)
                                        .frame(width: 200.0, height: 50.0)
                                }
                            } .foregroundStyle(.white)
                                .padding(70)
                        }
                    }).fullScreenCover(isPresented: $showActoReal) {
                        sheetActoReal(acteur: acteur)
                        
                    }
                }
            }
            
        }
    }

   

#Preview {
    List_searchAR(acteur : actors[0])
}
