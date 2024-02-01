//
//  helpers.swift
//  ProductApp
//
//  Created by Alexander Suprun on 01.02.2024.
//

import Foundation
import SwiftUI

struct DashedDivider: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: geometry.size.width, y: 0))
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
            .foregroundColor(.gray)
        }
        .frame(height: 1)
        .offset(y: 12)

    }
}
