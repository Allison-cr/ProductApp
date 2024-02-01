//
//  FeedBackView.swift
//  ProductApp
//
//  Created by Alexander Suprun on 01.02.2024.
//

import SwiftUI

struct FeedBackView: View {
    var name : String
    var date: String
    var rating : Int
    var message : String

    var maxRating: Int = 5
    var filledStar: Image = Image(systemName: "star.fill")
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 16, weight: .bold))
                Text(date)
                    .foregroundColor(.gray)
                HStack {
                    ForEach(0..<maxRating) { index in
                        if index < rating {
                            filledStar
                                .foregroundColor(.yellow)
                        } else {
                            filledStar
                                .foregroundColor(Resources.colors.gray)
                        }
                    }
                }
                Text(message)
            }
            .padding()
         //   .frame(width: geometry.size.width * 0.7)
            .background()
            .cornerRadius(16)
        }
        .shadow(radius: 10)
    }
}

struct FeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedBackView(name: "Александр В.",
                     date: "7 мая 2021",
                     rating: 4,
                     message: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"
        )
    }
}
