//
//  StepsComing.swift
//  ProductMood Watch App
//
//  Created by Otis Young on 5/14/25.
//

import WatchKit
import HealthKit

let healthStore = HKHealthStore()


func fetchSteps(completion: @escaping (Double) -> Void) {
    guard let stepType = HKQuantityType.quantityType(forIdentifier: .stepCount) else { return }
    let start = Calendar.current.startOfDay(for: Date())
    let predicate = HKQuery.predicateForSamples(withStart: start, end: Date(), options: .strictStartDate)
    
    let query = HKStatisticsQuery(quantityType: stepType, quantitySamplePredicate: predicate, options: .cumulativeSum) { _, result, _ in
        let steps = result?.sumQuantity()?.doubleValue(for: .count()) ?? 0
        completion(steps)
    }

    healthStore.execute(query)
}
