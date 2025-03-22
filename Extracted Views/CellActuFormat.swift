import SwiftUI

struct CellActuFormat: View {
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
                        if isMyProfile(user: getUserByReview(review: avisTest)) == false {
                            
                            HStack{
                                Image(avisTest.photoProfil)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 60)
                                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                
                                
                                Text(avisTest.userName.username.rawValue)
                                    .font(.system(size:15))
                                    .lineLimit(2)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                
                                Spacer()
                                
                                Text(getBadge(badge: avisTest.userName.badge))
                                    .font(.system(size: 25))
                                
                                
                            } .frame(width: 210 )
                        }
                        
                        HStack{
                            if isMyProfile(user: getUserByReview(review: avisTest)) == false {
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
                                        .lineLimit(3)
                                        
                                    
                                }
                            } else {
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
    
    CellActuFormat( avisTest: avisTableau[2])
}
