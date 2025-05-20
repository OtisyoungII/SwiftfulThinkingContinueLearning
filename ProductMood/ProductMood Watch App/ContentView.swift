//
//  ContentView.swift
//  ProductMood Watch App
//
//  Created by Otis Young on 5/6/25.
//






import SwiftUI
import HealthKit






struct HomeView: View {
    
    @State private var sleepScore: Int = 0
    @State private var activityLevel: Int = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("Title")
                    .font(.headline)

           if sleepScore > 0 {
                    currentMood(sleepScore: sleepScore, activityLevel: activityLevel) <
                   
                }
                    .frame(width: 50, height: 50)

                Text(currentMood.description)
                    .font(.subheadline)

                Divider()

                HStack {
                    VStack {
                        Text("Sleep")
                        Text("\(sleepScore)/100")
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("Activity")
                        Text("\(activityLevel)%")
                            .font(.caption)
                    }
                }
                .padding(.horizontal)

                Divider()

//                NavigationLink("Log Mood", destination: LogMoodView())
//                NavigationLink("History", destination: MoodHistoryView())
            }
            .padding()
            .onAppear {
                fetchHealthData()
            }
        }
    }
    func currentMood(_ mood: String) -> String {
        switch mood {
        case "Happy":
            return "Happy"
        case "Sad":
            return "Sad"
        case "Angry":
            return "Angry"
        case "Calm":
            return "Calm"
        case "Nervous":
            return "Nervous"
        default:
            return "Neutral"
        }
    }

    func fetchHealthData() {
        // Placeholder for integration with HealthKit or data logic
        // Simulate data for preview/testing
        sleepScore = 78
        activityLevel = 63
        let Mood = currentMood
    }

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image("Neutral")
//                .resizable()
//                
//            Text("Moodish")
//        }
//        .padding()
//    }
}

#Preview {

}
