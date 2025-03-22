//
//  list_rsearchProgram.swift
//  7thWhisperer
//
//  Created by apprenant95 on 07/11/2024.
//

import SwiftUI

struct List_searchProgram: View {
    var program : Programme
    var body: some View {
        HStack {
            Image(program.affiche)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(program.titre)
                    .font(.headline)
                Text(program.synopsis)
            }
            
        }
        
    }
}


#Preview {
    List_searchProgram(program : allPrograms[0])
}
