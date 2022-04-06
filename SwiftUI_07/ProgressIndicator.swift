//
//  ProgressIndicator.swift
//  SwiftUI_07
//
//  Created by Omar Regalado on 22/12/21.
//

import SwiftUI

struct ProgressIndicator: View {
    private var trackGradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.green]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.secondary, lineWidth: 10)
                .frame(width: 200, height: 200)
            
            Circle()
                .trim(from: 0, to: 0.80)
                .stroke(trackGradient, lineWidth: 20)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: 270))
                .overlay(VStack{
                    Text("Steps")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                    Text("1,245")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                })
                
            
        }
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator()
    }
}
