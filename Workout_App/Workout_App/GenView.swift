//
//  GenView.swift
//  Workout_App
//
//  Created by Gerrit VanderStoel on 12/5/23.
//

import SwiftUI

struct GenWorkout: View {
    let tricepsList = ["Tricep Cable Extensions,", "Tricep Machine Extensions,", "Dips,", "Dip Machine,"]
    
    let chestList = ["Bench Press,", "Dumbell Press,", "Incline Bench Press,", "Triangle Push Ups,", "Machine Chest Press,", "Pec Fly,"]
    
    let bicepsList = ["Bicep Machine Curls,", "Chin up,", "Bicep Barbell Curl,", "Bicep Dumbell Curl,", "Pushups,"]
    
    let backList = ["T Bar Row,", "Pull Up,", "Cable Row,", "Lat Raise,", "Lat Pulldown,"]
    
    let legsList = ["Leg Press,", "Decline Leg Press,", "Squat,", "Bulgarian Split Squat,", "Leg Curl,", "Leg Extension,", "Hip Abduction,"]
    
    @State var generatedExercises: [String] = []
    
    @State private var CurrentWorkout = "No Workout"
    
    var body: some View {
        ZStack {
            BackgroundView(firstColor: .gray, secondColor: .white)
            VStack {
                Button(action: generatePushWorkout, label: { ControllerButtons(title: "Generate Push Workout", textColor: .white, backgroundColor: .black)})
                    .padding(10)
                
                Button(action: generatePullWorkout, label: { ControllerButtons(title: "Generate Pull Workout", textColor: .white, backgroundColor: .black)})
                    .padding(10)
                
                Button(action: generateLegsWorkout, label: { ControllerButtons(title: "Generate Legs Workout", textColor: .white, backgroundColor: .black)})
                    .padding(10)
                
                
                Text(CurrentWorkout)
                    .fontWeight(.bold)
                
            }
        }
    }
    
    func generatePushWorkout() {
        let tricepsExercises = generateRandomExercises(from: tricepsList, count: 3)
        let chestExercises = generateRandomExercises(from: chestList, count: 3)
        
        generatedExercises = tricepsExercises + chestExercises
        
        
        CurrentWorkout = generatedExercises.joined(separator: " ")
    }
    
    func generatePullWorkout() {
        let bicepsExercises = generateRandomExercises(from: bicepsList, count: 3)
        let backExercises = generateRandomExercises(from: backList, count: 3)
        
        generatedExercises = bicepsExercises + backExercises
        
        CurrentWorkout = generatedExercises.joined(separator: " ")
    }
    
    func generateLegsWorkout() {
        generatedExercises = generateRandomExercises(from: legsList, count: 5)
        
        CurrentWorkout = generatedExercises.joined(separator: " ")
    }
    
    func generateRandomExercises(from list: [String], count: Int) -> [String] {
        var selectedExercises: [String] = []
        var availableExercises = list
        
        for _ in 0..<count {
            guard let exercise = availableExercises.randomElement() else {
                break
            }
            selectedExercises.append(exercise)
            if let index = availableExercises.firstIndex(of: exercise) {
                availableExercises.remove(at: index)
            }
        }
        
        return selectedExercises
    }
}
struct GenView_Previews: PreviewProvider {
    static var previews: some View {
        GenWorkout()
    }
}


