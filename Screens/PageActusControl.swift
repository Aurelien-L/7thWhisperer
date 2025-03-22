//
//  PageActusControl.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 07/11/2024.
//

import SwiftUI

struct PageActusControl: View {
    @State var userProfile : Utilisateur
    var body: some View {
        PageActus (userProfile: $userProfile)
    }
}

#Preview {
    PageActusControl(userProfile: utilisateurs[0])
}
