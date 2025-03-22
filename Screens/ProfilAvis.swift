import SwiftUI

struct ProfilAvis: View {
    @State var backgroundColor = Color.principal
    
    
    @Binding var userProfile: Utilisateur
    
    var body: some View{

        
        ZStack{
            
            backgroundColor.ignoresSafeArea()
            
     
            VStack{
                
                BlocBanniere(userProfile: $userProfile)
                Text("Mes Avis").font(.largeTitle)
                    .bold()
                    .padding(.top, 25)
                ScrollView{
                    
                        
                        
                        
                        
                        ZStack{
                            Color.principal
                            
                            VStack(spacing:20){
                                
                                ForEach(getReviewsByUser(user: userProfile)){ avis in
                                    NavigationLink( destination:
                                                        Review(item: avis, user: avis.userName),
                                                    label: {
                                        CellProfilFormat(avisTest: avis)
                                    })
                                }
                            }
                        }
                    
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        ProfilAvis(userProfile: .constant(Keke))
    }
}
