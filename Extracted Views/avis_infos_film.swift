//
//  avis_infos_film.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 29/10/2024.
//

import SwiftUI

struct avis_infos_film: View {
    
    var avisUser: Avis
    
    var body: some View {
        VStack{
            HStack{
                
                Image(avisUser.photoProfil)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 50)
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    //.padding(.leading, 10)
                
                Text(avisUser.userName.username.rawValue)
                    .font(.system(size:15))
                    .underline()
                    .foregroundColor(.white)
                
                Spacer()
                    
                Text("\(avisUser.rating)")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundStyle(.white)
                    .background(Circle()
                        .fill(Color.principal)
                    )
            }.padding(.horizontal, 10)
            
            ScrollView {
                Text(avisUser.review)
                    .multilineTextAlignment(.leading)
                    .padding(.all, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                    .lineLimit(4)
            }
            
//            Text(avisUser.review)
//                .font(.system(size: 16))
//                .multilineTextAlignment(.leading)
//                .foregroundStyle(.white)
//                .padding(.vertical, 10)
//                .padding(.horizontal, 5)
            
            
            
        }.frame(width: 310, height: 180)
            .padding(.bottom, 30)
    }
}

#Preview {
    avis_infos_film(avisUser: avisTableau[1])
}

