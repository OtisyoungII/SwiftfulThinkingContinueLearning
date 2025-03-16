//
//  MagnifacationGestureBootCamp .swift
//  SwiftfulThinkingContinueLearning
//
//  Created by Otis Young on 2/19/25.
//

import SwiftUI

struct MagnifacationGestureBootCamp_: View {
    
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 35, height:35)
                Text("Swiftful Thinking")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Rectangle().frame(height:300)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                        currentAmount = value - 1
                        }
                        .onEnded { value in
                            currentAmount = 0
                        }
                    
                )
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding()
            .font(.headline)
            Text("This is the Caption for my photo !")
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .font(.title)
        //            .padding(40)
        //            .background(Color.red.cornerRadius(10))
        //            .scaleEffect(1 + currentAmount)
        //            .gesture(
        //                MagnificationGesture()
        //
        //                    .onChanged { value in
        //                        currentAmount = value - 1
        //
        //                    }
        //                    .onEnded { value in
        //                        lastAmount += currentAmount
        //                        currentAmount = 0
        //                    }
        //                )
        //                }
        //
        //
        //    }
    }
}
#Preview {
    MagnifacationGestureBootCamp_()
}
