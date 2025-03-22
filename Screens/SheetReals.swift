//
//  SheetReals.swift
//  7thWhisperer
//
//  Created by apprenant95 on 07/11/2024.
//

import SwiftUI

struct SheetReals: View {
    
            @State var backColor: Color  = .principal
            @Environment(\.dismiss) var dismiss
            var real: Realisateur
            
            var body: some View {
                
                
                
                VStack{
                    ZStack{
                        backColor
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                            .foregroundStyle(.black)
                            .frame(width: 300.0, height: 500)
                            .opacity(0.4)
                            .padding()
                        
                        HStack{
                            
                            VStack{
                                Image(real.photo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 90.0, height: 80)
                                    .shadow(color: .gray, radius: 20, x: 10, y: 10)
                                    .clipShape(Circle())
                                    .font(.largeTitle)
                                //  .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                                
                                Text(real.name )
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                Text(real.bio)
                                    .padding()
                                Text("Filmographie :")
                                    .bold()
                                    .font(.system(size: 20))
                                VStack(alignment: .center) {
                                    ForEach(getProgrammeByReal(realisateur: real)){ programme in
                                        Text(programme.titre)
                                    }
                                    Text("...")
                                }
                                
                            }
                        } .foregroundStyle(.white)
                            .padding(70)
                    }
                }
                Button("Retour") {
                    dismiss() }
            }
        }

        


#Preview {
    SheetReals(real: reals[9])
}
