

import SwiftUI

struct CellProfilFormat: View {
    @State private var showInfosFilm: Bool = false
    //  let cellActu: CellActu
    var avisTest : Avis
    
    var body: some View {
        
        
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(width: 360, height: 180)
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                
                HStack{
                    
                    Image(avisTest.programPoster)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 110.0, height: 150.0)
                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    
                    VStack{
                        
                        HStack{
                          
                                VStack(spacing:0) {
                                    
                                    Text ("\(avisTest.reviewDate):")
                                        .font(.system(size: 13))
                                        .italic()
                                        .foregroundColor(.gray)
                                        . frame(maxWidth: 140, alignment:.leading)
                                    
                                    Text(avisTest.review)
                                        .multilineTextAlignment(.leading)
                                        . frame(width: 150)
                                        .font(.system(size:13))
                                        .foregroundColor(.black)
                                        .lineLimit(5)
                                }

                            
                            ZStack{
                                Circle()
                                    .foregroundColor(.principal)
                                    .frame(width:50)
                                Text("\(avisTest.rating)/10")
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                
                            }.padding(.trailing)
                        }
                    }
                }
            }
        }
    }
    
}


#Preview {
    
    CellProfilFormat( avisTest: avisTableau[1])
}
