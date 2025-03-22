

import SwiftUI

struct RealData: View {
    @State private var showReal: Bool = false
    
    var selectedReal: Realisateur
    
    var body: some View {
        ScrollView{
            
            VStack{
                Button(action: {
                    showReal.toggle()
                    // ReliÃ© aux pages films
                }
                       ,label: {
                    
                    
                    
                    ZStack{
                        VStack{
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                                .foregroundStyle(.black)
                                .opacity(0.6)
                                .padding()
                                .padding(42)
                        }
                        HStack{
                            
                            Image(selectedReal.photo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 80)
                                .shadow(color: .gray, radius: 20, x: 10, y: 10)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                            VStack{
                                Text(selectedReal.name )
                                Text(selectedReal.bio)
                                    .frame(width: 200.0, height: 50.0)
                            }
                        } .foregroundStyle(.white)
                            .padding(70)
                    }
                }).fullScreenCover(isPresented: $showReal) {
                    SheetReals(real: selectedReal)
                    
                }
            }
        }
    }
}


#Preview {
    RealData(selectedReal: reals[9])
}
