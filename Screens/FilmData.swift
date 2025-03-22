import SwiftUI

struct FilmsData: View {
    @State private var showInfosFilm: Bool = false
    let cellActu: Programme
    
    var body:some View{
        
        ScrollView{
            VStack{
                    ZStack{
                        
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 15))
                            .foregroundStyle(.black)
                            .opacity(0.6)
                            .padding()
                            .frame(width: 400, height: 300)
                        HStack{
                            
                            Image(cellActu.affiche)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0, height: 170.0)
                                .shadow(color: .black, radius: 10, x: 5, y: 5)
                            
                            Spacer()
                            VStack{
                                    Text(cellActu.titre)
                                        .bold()
                                        .font(.title)
                                
                                Text(cellActu.synopsis)
                                    .padding(0.5)
                                    .lineLimit(3)
                            }
                        } .foregroundStyle(.white)
                            .padding(70)
                    }
                }
        }
    }
}
#Preview {
    FilmsData(cellActu :allPrograms[1])
}
