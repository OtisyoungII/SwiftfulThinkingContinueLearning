//
//  LongPressGestureBootCamp.swift
//  SwiftfulThinkingContinueLearning
//
//  Created by Otis Young on 2/19/25.
//

import SwiftUI

struct LongPressGestureBootCamp: View {
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            HStack {
                Text("Click Here")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) {
                            }
                    }

                
                
                Text("Reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)

                                
                            }
                            
                        }
                    }
                
                
                
                
                
                
                
            
        
    

    #Preview {
        LongPressGestureBootCamp()
    }
    
    

