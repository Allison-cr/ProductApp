//
//  EnumFeedback.swift
//  ProductApp
//
//  Created by Alexander Suprun on 01.02.2024.
//

import Foundation

enum Feedback: CaseIterable {
    case name
    case date
    case rating
    case message
    
    func stringValue() -> String {
        switch self {
        case .name:
            return "Александр В."
        case .date:
            return "Date string"
        case .rating:
            return "Rating string"
        case .message:
            return "Message string"
        }
    }
}
