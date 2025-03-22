//
//  reco_film.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 25/10/2024.
//

import SwiftUI

struct reco_film: View {
    
    var program: Programme
    
    var body: some View {
        VStack{
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 170, height: 300)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.5), radius: 8, x: 0, y: 5)
                    .padding()
                
                
                VStack(spacing: 5){
                    Spacer()
                    Image(program.affiche)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 190)
                        .clipped()
                        .padding(.top, 15)
                    
                    if program.titre.count < 40 {
                        Text(program.titre)
                            .font(.system(size: 16))
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 150.0)
                            .padding(.vertical, 10.0)
                    } else {
                        Text(program.titre)
                            .font(.system(size: 12))
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 150.0)
                            .padding(.vertical, 5.0)
                    }
                    
                    HStack(spacing: 15) {
                        
                        ForEach(program.plateform, id: \.self){ plateforme in
                            Image(plateforme)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 25)
                                .clipped()
                        }
                    }.padding(.bottom, 15)
                    Spacer()
                }
                
                
            }
            
        }
    }
}

#Preview {
    reco_film(program: films[2])
}
