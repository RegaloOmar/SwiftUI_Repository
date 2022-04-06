//
//  ContentView.swift
//  SwiftUI_07
//
//  Created by Omar Regalado on 20/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Path(){ path in
                path.move(to: CGPoint(x: 30, y: 30))
                path.addLine(to: CGPoint(x: 230, y: 30))
                path.addLine(to: CGPoint(x: 230, y: 150))
                path.addLine(to: CGPoint(x: 30, y: 150))
        
            }
            .fill(Color.blue)
            
            Path(){ path in
                path.move(to: CGPoint(x: 30, y: 30))
                path.addLine(to: CGPoint(x: 230, y: 30))
                path.addLine(to: CGPoint(x: 230, y: 150))
                path.addLine(to: CGPoint(x: 30, y: 150))
                path.closeSubpath()
            }
            .stroke(Color.blue, lineWidth: 5.0)
            
            ZStack {
                Path(){ path in
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 150))
                    path.addLine(to: CGPoint(x: 30, y: 150))
            
                }
                .fill(Color.blue)
                
                Path(){ path in
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 150))
                    path.addLine(to: CGPoint(x: 30, y: 150))
                    path.closeSubpath()
                }
                .stroke(Color.red, lineWidth: 5.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
