import SwiftUI


struct PageActus: View {
    @State private var showSettings: Bool = false
    @Binding var userProfile : Utilisateur
    var body: some View {
        
        
        NavigationStack{
            
            
            ZStack{
                Color.principal
                
                ScrollView{
                    
                    
                    VStack(spacing:20){
                        Spacer()
                        
                        ForEach(getReviewsByOtherUser(user: userProfile)){ avis in
                            NavigationLink( destination:
                                                Review(item: avis, user: avis.userName),
                                            label: {
                                CellActuFormat(avisTest:avis)
                            })
                        }
                        
                        
                    }
                }
            }
            .navigationTitle("Actus")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action : {
                        showSettings.toggle()
                        
                    }, label : { Image(systemName: "gear").foregroundStyle(.white) })
                    .fullScreenCover(isPresented: $showSettings) {
                        Parametres()
                        
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    
                }
            }
        }
        
    }
}

#Preview {
    PageActus(userProfile: .constant(Keke))
}
