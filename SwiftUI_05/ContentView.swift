//
//  ContentView.swift
//  SwiftUI_05
//
//  Created by Omar Regalado on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button(action: {
                print("Hello World")
            }){
                
                Text("Hello World!")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .border(.green, width: 4)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.green, lineWidth: 5))
            }
            
            
            Button {
                print("trash button")
            } label: {
                Image(systemName: "trash")
                    .padding()
                    .background(Color.red)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            
            
            Button {
                print("Trash with text")
            } label: {
                HStack{
                    Image(systemName: "trash")
                    
                    Text("Delete")
                        .fontWeight(.bold)
                }
                .padding()
                .font(.largeTitle)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(50)
                
            }
            
            //Gradient
            Button {
                print("Gradiente")
            } label: {
                HStack{
                    Image(systemName: "star")
                    
                    Text("MVP")
                        .fontWeight(.bold)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                
                .padding()
                .font(.largeTitle)
                .background(LinearGradient(colors: [Color.yellow, Color.red], startPoint: .top, endPoint: .bottom))
                .foregroundColor(.black)
                .cornerRadius(35)
                .shadow(color: .black,radius: 5.0)
                .padding(8)
            }
            
            //Resuable styles
            Button {
                print("Gradiente")
            } label: {
                HStack{
                    Image(systemName: "square.and.pencil")
                    
                    Text("Create")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
            
            Button {
                print("Ejercicio")
            } label: {
                Image(systemName: "star.fill")
            }
            .buttonStyle(RotationButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

//MARK:- Struct for reusable buttons
struct BasicButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .font(.largeTitle)
            .background(LinearGradient(colors: [Color.blue, Color.black], startPoint: .top, endPoint: .bottom))
            .foregroundColor(.white)
            .cornerRadius(35)
            .shadow(color: .black,radius: 5.0)
            .padding(8)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
    
}


struct RotationButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.largeTitle)
            .background(Color.black)
            .foregroundColor(.yellow)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? Angle.degrees(180) : Angle.zero)
    }
    
}
