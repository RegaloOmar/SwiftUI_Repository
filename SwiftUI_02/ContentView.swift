//
//  ContentView.swift
//  SwiftUI_02
//
//  Created by Omar Regalado on 17/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("newyork")
            .resizable()
            .clipShape(Capsule())
            .aspectRatio(contentMode: .fill)
            .padding()
           .overlay(Text("New York")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle,
                                      design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                        .opacity(0.7))
            .overlay(
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.5)
            )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
