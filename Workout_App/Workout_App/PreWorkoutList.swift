//
//  PreWorkoutList.swift
//  Workout_App
//
//  Created by Gerrit VanderStoel on 11/16/23.
//

import SwiftUI

struct PreWorkoutView: View {
    var preworkouts: [PreWorkout] = EditorList.samplePre
    
    var body: some View {
        NavigationView {
            List(preworkouts, id: \.name) { pre in
                NavigationLink(destination: PreDetail(pre: pre), label: {
                HStack {
                    Image(pre.picture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 70)
                        .cornerRadius(4)
                        .padding(.vertical, 4)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(pre.name)
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text(pre.miniDis)
                        
                        Text("Rating: \(pre.rating) /10")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                    }
                }
            })
            .navigationTitle("Pre List")
        }
    }
    }
}


    struct PreWorkoutView_Previews: PreviewProvider {
        static var previews: some View {
            PreWorkoutView()
        }
    }
