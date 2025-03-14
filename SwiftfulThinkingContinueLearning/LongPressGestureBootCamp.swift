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
            Rectangle()
                .fill(Color.blue)
                .frame(maxWidth: 10)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            HStack {
                Text("Click Here")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
                
                Text("Reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)

                                
                            }
                            
                        }
                    }
                
                
                
                
                
                
                
            
        
    
}
    #Preview {
        LongPressGestureBootCamp()
    }
    
    

