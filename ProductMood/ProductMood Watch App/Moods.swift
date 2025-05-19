//
//  Moods.swift
//  ProductMood Watch App
//
//  Created by Otis Young on 5/14/25.
//

import SwiftUI

enum Mood: String {
    case happy, sad, neutral, anxious, energized

    var description: String {
        switch self {
        case .happy: return "Happy"
        case .sad: return "Sad"
        case .neutral: return "Neutral"
        case .anxious: return "Anxious"
        case .energized: return "Energized"
        }
    }

    var emoji: String {
        switch self {
        case .happy: return "😊"
        case .sad: return "😢"
        case .neutral: return "😐"
        case .anxious: return "😰"
        case .energized: return "⚡️"
        }
    }
}

struct MoodIcon: View {
    let mood: Mood

    var body: some View {
        Text(mood.emoji)
            .font(.largeTitle)
    }
}
#Preview {
    
}
