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
    @State private var currentMood: String = "Neutral"

    var body: some View {
        NavigationStack {
            VStack(spacing: 1) {
                Text("Moodish")
                    .font(.headline)
                    .foregroundColor(.blue)
                
                Image(currentMood) // Uses the mood name as the asset name
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text(currentMood)
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
    
    func calculateMood(sleep: Int, activity: Int) -> String {
        // Simple logic — this can be made more complex later
        if sleep < 40 {
            return "Sad"
        } else if sleep >= 40 && sleep < 70 {
            return "Neutral"
        } else if sleep >= 70 && activity > 60 {
            return "Happy"
        } else if activity < 20 {
            return "Angry"
        } else {
            return "Calm"
        }
    }

    func fetchHealthData() {
        // Placeholder logic to simulate fetching from HealthKit
        sleepScore = 78
        activityLevel = 63
        
        // Update mood based on values
        currentMood = calculateMood(sleep: sleepScore, activity: activityLevel)
    }
}
#Preview {
HomeView()
}
