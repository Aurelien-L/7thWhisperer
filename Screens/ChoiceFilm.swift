//
//  ChoiceFilm.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 29/10/2024.
//

import SwiftUI

struct ChoiceFilm: View {
    
    
    @State var searchText = ""
   // @State var backColor: Color  = .principal
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack{
                    
            } .searchable(text: $searchText)
        }
        
        Button(action: {
            dismiss()
        }, label: {
            Text("Validation")
        
        })
    }
}

#Preview {
    NavigationStack{
        ChoiceFilm()
    }
}
