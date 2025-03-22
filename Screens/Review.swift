import SwiftUI

struct Review: View {
    @State private var showInfosFilm: Bool = false
    @State private var showSettings: Bool = false
    let item: Avis
    let user: Utilisateur
    
    var body: some View {
        VStack{
                
                
                ZStack{
                    
                    Image(item.programPoster)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.3)
                    
                    ScrollView{
                        
                        
                        
                        
                        VStack{
                            
                            ZStack {
                                Rectangle()
                                
                                    .foregroundStyle(Color("BarsColor"))
                                    .frame(maxWidth: 1000, maxHeight: 9100)
                                
                                
                                
                                if item.programTitle.titre.count < 40 {
                                    Text(item.programTitle.titre)
                                        .font(.title)
                                        .multilineTextAlignment(.center)
                                        .bold()
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                        .frame(width: 340)
                                        .foregroundStyle(.principal)
                                } else {
                                    Text(item.programTitle.titre)
                                        .font(.system(size: 20))
                                        .multilineTextAlignment(.center)
                                        .bold()
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                        .frame(width: 340)
                                        .foregroundStyle(.principal)
                                }
                                
                           }
                            
                            
                            
                            HStack{
                                
                                Button(action: {
                                    showInfosFilm.toggle()
                                }, label: {
                                    Image(item.programPoster)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 200, height: 200)
                                        .shadow(color: .black, radius: 10, x: 5, y: 5)
                                })
                                .fullScreenCover(isPresented: $showInfosFilm) {
                                    infos_films(program: item.programTitle)
                                }
                                
                                
                                ZStack{
                                    Circle()
                                        .frame(width:120)
                                    
                                        .foregroundColor(.principal)
                                        .shadow(radius: 10)
                                    Text("\(item.rating)/10")
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.white)
                                        .font(.system(size: 40))
                                        .bold()
                                }
                            }
                            .padding(.top, 20)
                        }
                        .padding(.all)
                        
                        VStack{
                            if isMyProfile(user: user) == false{
                                
                                HStack{
                                    
                                    NavigationLink(destination: PageControlView(userProfile: getUserByReview(review: item)),
                                                   label: { Image(item.photoProfil)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 60, height: 80)
                                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                                            .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))})
                                    
                                    
                                    Text(item.userName.username.rawValue)
                                        .font(.system(size:18))
                                        .italic()
                                        .foregroundStyle(.black)
                                    
                                    Text(getBadge(badge: item.userName.badge))
                                        .font(.system(size:25))

                                    
                                    
                                    
                                }
                                .padding(.horizontal)
                            }
                            VStack (spacing : 0){
                                Text("\(item.reviewDate):")
                                    .font(.system(size: 13))
                                    .padding(.top)
                                    . frame(maxWidth: 300, alignment:.leading)
                                    .italic()
                                    .foregroundColor(.gray)
                                
                                
                                Text(item.review)
                                    .foregroundStyle(.black)
                                    .padding([.leading, .bottom, .trailing])
                                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    .frame(width: 340)
                                
                            }
                            
                        }
                        .background(RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                                    
                            .shadow(color: .gray, radius: 5, x: 2, y: 2))
                        
                    }
                }
            
        }.toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action : {
                    
                    showSettings.toggle()
                    
                }, label : { Image(systemName: "gear").foregroundStyle(.white) })
                .fullScreenCover(isPresented: $showSettings) {
                    Parametres()
                }
            }
        }
    }
}

#Preview {
    Review(item: avisTableau[5], user: utilisateurs[1])
}
