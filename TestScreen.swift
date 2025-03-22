//
//  TestScreen.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 31/10/2024.
//

import SwiftUI

struct TestScreen: View {
    var filmList = films[0]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(getActor(programme: filmList)){ actor in
                Text(actor.name)
            }
            
        }
        
        
    }
}


#Preview {
    TestScreen()
}
