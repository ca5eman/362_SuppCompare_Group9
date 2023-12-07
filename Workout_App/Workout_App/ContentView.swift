//
//  ContentView.swift
//  Workout_App
//
//  Created by Gerrit VanderStoel on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                BackgroundView(firstColor: .blue, secondColor: .purple)
                
                VStack {
                    Text("Welcome to SuppCompare!")
                        .foregroundColor(.white)
                        .frame(width: 250 , height: 30)
                        .background(.blue)
                        .cornerRadius(20)
                        .padding(100)
                    
                    NavigationLink(destination: PreWorkoutView(), label: { ControllerButtons(title: "Pre Workout List", textColor: .white, backgroundColor: .purple)})
                    
                    NavigationLink(destination: GenWorkout(), label : {
                        ControllerButtons(title: "Generate Workout", textColor: .white, backgroundColor: .red)})
                        
                    NavigationLink(destination: CreateWork(), label: {ControllerButtons(title: "Create Workout", textColor: .white, backgroundColor: .blue)})
                Spacer()
                }
                
                HStack() {
   
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    
    var firstColor: Color
    
    var secondColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
