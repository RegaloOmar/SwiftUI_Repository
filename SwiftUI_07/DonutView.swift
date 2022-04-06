//
//  DonutView.swift
//  SwiftUI_07
//
//  Created by Omar Regalado on 22/12/21.
//

import SwiftUI

struct DonutView: View {
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0, to: 0.3)
                .stroke(Color.brown, lineWidth: 60)
            
            Circle()
                .trim(from: 0.3, to: 0.5)
                .stroke(Color.pink, lineWidth: 60)
            
            Circle()
                .trim(from: 0.5, to: 0.75)
                .stroke(Color.blue, lineWidth: 60)
            
            Circle()
                .trim(from: 0.75, to: 1)
                .stroke(Color.green, lineWidth: 60)
                
        }
        .frame(width: 200, height: 250)
    }
}

struct DonutView_Previews: PreviewProvider {
    static var previews: some View {
        DonutView()
    }
}
