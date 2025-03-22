


import SwiftUI
struct CelluleUtilisateur: View {
    @State private var showSettings: Bool = false
    var item : Utilisateur
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
            ZStack{
                Color.principal
                
               
                    
                    
                    VStack(spacing:20){
                        
                        ForEach(utilisateurs){ avis in
                            NavigationLink( destination:
                                                PageControlView(userProfile: item),
                                            label: {
                                DataProfils( utilisateur: avis)
                            })
                        }
                        
                        
                    }
                }
            }
        }.navigationTitle("Actus")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action : {
                       
                        showSettings.toggle()
                        
                    }, label : { Image(systemName: "gear").foregroundStyle(.white) })
                    .fullScreenCover(isPresented: $showSettings) {
                        Parametres()
                        
                    }.navigationBarTitle("Recherche")
                        .navigationBarTitleDisplayMode(.inline)
                    
                }
            }
    }
        
}

#Preview {
   
        CelluleUtilisateur(item: utilisateurs[0])
    
}
