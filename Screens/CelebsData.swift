//
//  CelebsData.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 28/10/2024.
//

import SwiftUI

struct CelebsData: View {
   @State private var showActoReal: Bool = false
   var acteur: Actor
   
   var body:some View{
       ScrollView{
           
           VStack{
               Button(action: {
                   showActoReal.toggle()
                   // Relié aux pages films
               }
                      ,label: {
                   
                   
                   
                   ZStack{
                       VStack{
                           RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                               .foregroundStyle(.black)
                               .opacity(0.6)
                               .padding()
                               .padding(42)
                       }
                       HStack{
                           
                           Image(acteur.portrait)
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 40, height: 80)
                               .shadow(color: .gray, radius: 20, x: 10, y: 10)
                               .clipShape(Circle())
                               .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                           VStack{
                               Text(acteur.name )
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
   CelebsData(acteur: actors[7])
}
