//
//  PieView.swift
//  SwiftUI_07
//
//  Created by Omar Regalado on 22/12/21.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        ZStack {
            
            Path(){ path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250),
                            radius: 150,
                            startAngle: Angle(degrees: 0),
                            endAngle: Angle(degrees: 90),
                            clockwise: false)
            }
            .fill(Color.yellow)
            
            Path(){ path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250),
                            radius: 150,
                            startAngle: Angle(degrees: 90),
                            endAngle: Angle(degrees: 240),
                            clockwise: false)
            }
            .fill(Color.red)
            .offset(x: -10, y: 0)
            
            Path(){ path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250),
                            radius: 150,
                            startAngle: Angle(degrees: 90),
                            endAngle: Angle(degrees: 240),
                            clockwise: false)
                path.closeSubpath()
            }
            .stroke(Color.black, lineWidth: 5)
            .offset(x: -10, y: 0)
            .overlay(Text("35%")
                        .font(.largeTitle)
                        .bold().offset(x: -95, y: -150))
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250),
                            radius: 150,
                            startAngle: Angle(degrees: 240),
                            endAngle: Angle(degrees: 360),
                            clockwise: false)
            }
            .fill(Color.green)
        }
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
