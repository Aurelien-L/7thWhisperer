//
//  ProfilView.swift
//  7thWhisperer
//
//  Created by Apprenant 86 on 05/11/2024.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        NavigationStack {
            PageControlView(userProfile: Keke)
        }
    }
}

#Preview {
    ProfilView()
}
