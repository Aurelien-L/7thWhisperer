import SwiftUI

// Définition de la structure Watcher

struct DataProfils: View {
    @State private var showActoReal: Bool = false
    
    var utilisateur: Utilisateur
    @State private var searchText = ""
    
    var body: some View {
        
        VStack{
            SwiftUI.Button(action: {
                showActoReal.toggle()
                // ReliÃ© aux pages films
            }
                           ,label: {
                ZStack{
                    VStack{
                        
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                            .foregroundStyle(.black)
                            .opacity(0.6)
                            .padding()
                        // .padding(42)
                            .frame(width : 300, height: 200)
                    }
                    HStack{
                        
                        Image(utilisateur.photoProfil)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 80)
                            .shadow(color: .gray, radius: 20, x: 10, y: 10)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        VStack{
                            Text(utilisateur.username.rawValue)
                            
                            
                        }
                    } .foregroundStyle(.white)
                    // .padding(70)
                }
            }).fullScreenCover(isPresented: $showActoReal) {
                PageControlView(userProfile: utilisateur)
                
            }
        }
        
        
            
        }
    }
    
    



#Preview {
    DataProfils(utilisateur: utilisateurs[1])
}
