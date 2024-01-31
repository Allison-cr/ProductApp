import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                HStack(spacing: 16) {
                    Image(systemName: "arrow.left")
                    Spacer()
                    Image(systemName: "doc.plaintext")
                    Image(systemName: "square.and.arrow.up")
                    Image(systemName: "heart")
                }
                .padding(.horizontal, 16)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Colors.main)
                Divider()
                    .background(Color.gray)
                    .padding(.top, 10)
                VStack(alignment: .leading) {
                    HStack {
                        Text("Цена по карте")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Colors.main)
                            .cornerRadius(4)

                        
                        Spacer()
                    }
                    Image("lipa")
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .aspectRatio(contentMode: .fit)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 24, weight: .bold))
                        Text("4.1")
                        +
                        Text(" | 19 отзывов")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.leading)
                    HStack {
                        Text("Добавка ''Липа''\n к чаю 200 г")
                            .font(.system(size: 36,weight: .bold))
                            .padding(.top, 8)
                        Spacer()
                    }
                    HStack {
                        Image("flag")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Испания, Риоха")
                            .font(.system(size: 20))
                        Spacer()
                    }
                    .padding()
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Описание")
                            .font(.system(size: 18, weight: .bold))
                            
                        Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                    
                        Text("Основные характеристики")
                            .font(.system(size: 18, weight: .bold))
                        
                        HStack {
                            Text("Производство")
                            DashedDivider()
                                Text("Россия, Краснодарский  край")
                                    .multilineTextAlignment(.trailing)
                            }
                        
                     
                    }
                    Spacer()
                }
                .padding(.horizontal, 16)

            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
