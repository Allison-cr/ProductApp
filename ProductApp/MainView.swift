import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 5) {
                    TopView()
                    MiddleView()
                }
            }
            BottomView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct BottomView: View {
    @State var tog : Bool = false
    @State var count : Int = 1
    @State var price : Double = 120.0
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Divider()
                .shadow(color: Color.gray, radius: 15)
            VStack {
                HStack {
                    Button(action: {
                        tog = false
                    }) {
                        Text("Шт")
                            .font(.system(size: 14, weight: tog ? .none : .bold))
                    }
                    .padding(.vertical, 3)
                    .frame(maxWidth: .infinity)
                    .background(tog ? Resources.colors.gray.opacity(0.2) : Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(6)
                    Button(action: {
                        tog = true
                    }) {
                        Text("Кг")
                            .font(.system(size: 14, weight: tog ? .bold : .none))
                    }
                    .padding(.vertical, 3)
                    .frame(maxWidth: .infinity)
                    .background(tog ? Color.white : Resources.colors.gray.opacity(0.2))
                    .foregroundColor(.black)
                    .cornerRadius(6)
                }
                .padding(2)
                .background(Resources.colors.gray)
                .cornerRadius(6)
                HStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text("55.9")
                                .font(.system(size: 32, weight: .bold))
                            Image("znak")
                                .resizable()
                                .frame(width: 38, height: 32)
                        }
                        Text("199,0")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .strikethrough()
                    }
                    Spacer()
                    HStack {
                        Button(action: {
                            if (count > 0) {
                                count -= 1
                            }
                        }) {
                            Text("-")
                                .font(.system(size: 45))
                        }
                        VStack {
                            Text("\(count) Шт")
                                .font(.system(size: 18,weight: .bold))
                            let formattedString = String(format: "%.1f",(Double(count) * price) )
                            Text("\(formattedString) Р")
                                .font(.system(size: 14))
                        }
                        .padding(.horizontal, 16)
                        Button(action: {
                            count += 1
                        }) {
                            Text("+")
                                .font(.system(size: 45))
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 12)
                    .background(Resources.colors.main)
                    .cornerRadius(24)
                }
                .padding(.top, 15)
            }
            .padding(.top, 8)
            .padding(.bottom, 15)
            .padding(.horizontal, 10)
            .background(.white)
        }
    }
}

struct TopView: View {
    var body: some View {
        VStack {
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
        }
    }
}

struct MiddleView: View {
    var body: some View {
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
                Image("sel")
                    .resizable()
                    .frame(width: 70, height: 40)
            }
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
            VStack(alignment: .leading, spacing: 14) {
                Text(Resources.strings.titleDescription)
                    .font(.system(size: 18, weight: .semibold))
                
                Text(Resources.strings.description)
                    .fixedSize(horizontal: false, vertical: true)
                Text(Resources.strings.specifications)
                    .font(.system(size: 18, weight: .semibold))
                
                ForEach(Specific.allCases, id: \.self) { item in
                    Specifications(item: item)
                }
                Button(action: {
                    //
                }) {
                    Text(Resources.strings.allSpecifications)
                        .foregroundColor(Resources.colors.main)
                }
                .foregroundColor(Resources.colors.main)
                .font(.system(size: 18, weight: .bold))
                .padding(.vertical, 12)
                HStack {
                    Text(Resources.strings.feedback)
                    Spacer()
                    Button(action: {
                        //
                    }) {
                        Text(Resources.strings.feedbackValue)
                            .foregroundColor(Resources.colors.main)
                    }
                }
                .padding(.vertical, 8)
                .font(.system(size: 18, weight: .bold))
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(0..<10) { _ in
                            FeedBackView(name: "Александр В.",
                                         date: "7 мая 2021",
                                         rating: 4,
                                         message: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"
                            )
                            .padding(15)
                            .frame(width: 300, height: 200)
                        }
                    }
                }
                Button(action: {
                    //
                }) {
                    Spacer()
                    Text(Resources.strings.button)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Resources.colors.main)
                    Spacer()
                }
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Resources.colors.main, lineWidth: 3)
                )
            }
            .padding(.bottom, 135)
            .padding(.top, 16)
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}
