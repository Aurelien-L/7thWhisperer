//
//  sheetActoReal.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 04/11/2024.
//

import SwiftUI

struct sheetActoReal: View {
    @State var backColor: Color  = .principal
    @Environment(\.dismiss) var dismiss
    var acteur: Actor
    
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
                        Image(acteur.portrait)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90.0, height: 80)
                            .shadow(color: .gray, radius: 20, x: 10, y: 10)
                            .clipShape(Circle())
                            .font(.largeTitle)
                        //  .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        
                        Text(acteur.name )
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text(acteur.bio)
                            .padding()
                        Text("Filmographie :")
                            .bold()
                            .font(.system(size: 20))
                        VStack(alignment: .center) {
                            ForEach(getProgrammeByActor(acteur: acteur)){ programme in
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
    sheetActoReal(acteur: actors[5])
}
