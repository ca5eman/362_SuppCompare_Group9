//
//  PreDetail.swift
//  Workout_App
//
//  Created by Gerrit VanderStoel on 12/4/23.
//

import SwiftUI

struct PreDetail: View {
    
    var pre: PreWorkout
    
    var body: some View {
        VStack {
            
            Image(pre.picture)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(12)
            
            Text(pre.name)
                .font(.title)
                .fontWeight(.bold)
            
            
            VStack {
                Text("$" + pre.price)
                
                Text("Rating \(pre.rating)/10")
        
                Text(pre.review)
                    .padding(25)
                    .fontWeight(.semibold)
                    .lineLimit(nil)
                    .minimumScaleFactor(0.5)
                Button(action: {
                    if let url = URL(string: pre.link) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    ControllerButtons(title: "Purchase", textColor: .white, backgroundColor: .purple)
                }
            }

            }
        }
    }

struct PreDetail_Previews: PreviewProvider {
    static var previews: some View {
        PreDetail(pre: EditorList.samplePre.first!)
    }
}
