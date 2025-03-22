//
//  addAvis.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 04/11/2024.
//

import SwiftUI

struct addAvis: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var avis = ""
    
    var notes = [Int](1...10)
    @State private var selectedNote = 10
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            Form(){
                Section(header: Text("Ma note")) {
                    Picker("Ma note", selection: $selectedNote) {
                        ForEach(notes, id: \.self) { note in
                            Text("\(note)")
                        }
                    }
                    .pickerStyle(PalettePickerStyle()) // Style de picker
                    .padding(5)
                }
                
                Section(header: Text("Rédigez votre avis")) {
                                TextEditor(text: $avis)
                                    .frame(height: 150) // Hauteur de la zone de texte
                                    .padding(5)
                                    .cornerRadius(5)
                            }
                
            }.navigationTitle("Mon avis")
        }
        
        
        Button(action: {
            dismiss()
        }, label: {
            Text("Valider")
        })
    }
}

#Preview {
    addAvis()
}
