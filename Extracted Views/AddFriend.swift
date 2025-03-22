

import SwiftUI

struct AddFriend: View {
    @State private var Follow = true
    
    var body: some View {
        // boutton demande d'ami
    
        

            Button(action: {
              Follow.toggle()
            }, label: {
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 60 , height: 35)
                            .cornerRadius(10)
                            .foregroundColor(Follow ? Color.gray : Color.green)
                        
                        Text(Follow ? "Suivre" : "Suivi(e)")
                            .foregroundStyle(Follow ? Color.white : Color.white)
                            .padding(8)
                           // .background(.blue)
                            .cornerRadius(10.0)
                        
                        
                    }
                }
            })
        
        
        }
        
        
        
    }


#Preview {
    AddFriend()
}
