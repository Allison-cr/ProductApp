//
//  SwiftUIView.swift
//  ProductApp
//
//  Created by Alexander Suprun on 01.02.2024.
//

import SwiftUI

struct Specifications: View {
    var item : Specific

    var title: String {
        switch item {
        case .fats:
            return Resources.strings.fats
        case .nutritionalvalue:
            return Resources.strings.nutritionalvalue
        case .production:
            return Resources.strings.production
        case .proteins:
            return Resources.strings.proteins
        case .carbohydrates:
            return Resources.strings.carbohydrates
        }
    }
    
    var value: String {
        switch item {
        case .production:
            return Resources.strings.regionValue
        case .nutritionalvalue:
            return Resources.strings.nutritionalValue
        case .fats:
            return Resources.strings.fatsValue
        case .proteins:
            return Resources.strings.proteinsValue
        case .carbohydrates:
            return Resources.strings.carbohydratesValue
        }
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            Text(title)
            DashedDivider()
            Text(value)
                .multilineTextAlignment(.trailing)
        }
        .fixedSize(horizontal: false, vertical: true)
        .font(.system(size: 12))
    }
}

struct Specifications_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
