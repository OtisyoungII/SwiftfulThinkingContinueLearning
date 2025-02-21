//
//  LongPressGestureBootCamp.swift
//  SwiftfulThinkingContinueLearning
//
//  Created by Otis Young on 2/19/25.
//

import SwiftUI

struct LongPressGestureBootCamp: View {
    
    @State var isComplete: Bool = false
    
    var body: some View {
        VStack {
            Text(isComplete ? "Complete!" : "Not Complete!")
                .padding()
                .padding(.horizontal)
                .background(isComplete ? Color.green : Color.red)
                .cornerRadius(10)
            
        }
    }
}
#Preview {
    LongPressGestureBootCamp()
}
    

