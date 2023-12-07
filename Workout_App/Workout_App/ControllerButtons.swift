//
//  ControllerButtons.swift
//  Workout_App
//
//  Created by Gerrit VanderStoel on 11/13/23.
//

import SwiftUI

struct ControllerButtons: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
            .padding(20)
    }
}

