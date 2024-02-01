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
                .foregroundColor(Resources.colors.main)
                Divider()
                    .background(Color.gray)
                    .padding(.top, 10)
                VStack(alignment: .leading) {
                    HStack {
                        Text(Resources.strings.cell)
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Resources.colors.main)
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
                        Text(Resources.strings.review)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.leading)
                    HStack {
                        Text(Resources.strings.product)
                            .font(.system(size: 36,weight: .bold))
                            .padding(.top, 8)
                        Spacer()
                    }
                    HStack {
                        Image("flag")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text(Resources.strings.reg)
                            .font(.system(size: 20))
                        Spacer()
                    }
                    .padding(3)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(Resources.strings.titleDescription)
                            .font(.system(size: 18, weight: .semibold))
                            
                        Text(Resources.strings.description)
                            .fixedSize(horizontal: false, vertical: true)

                    
                        Text(Resources.strings.specifications)
                            .font(.system(size: 18, weight: .semibold))
                        
                        ForEach(Specific.allCases, id: \.self) { item in
                            Specifications(item: item)
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
