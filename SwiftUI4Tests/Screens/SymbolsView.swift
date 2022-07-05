//
//  Symbols.swift
//  SwiftUI4Tests
//
//  Created by Ahmet Kaan Kara on 5.07.2022.
//

import SwiftUI

struct SymbolsView: View {
    
    @State private var variableValue:Double = 0
    
    // For palette mode
    @State private var paletteVariableValue:Double = 0.1

    
    
    var body: some View {
        VStack(spacing:40){
            
            
            Text("Variable")
            HStack{
                Image(systemName: "person.3.sequence.fill",variableValue: 1)
                    .symbolRenderingMode(.palette)
                    .resizable()
                    .scaledToFit()
                Image(systemName: "person.3.sequence.fill",variableValue: 0.66)
                    .symbolRenderingMode(.palette)

                    .resizable()
                    .scaledToFit()
                Image(systemName: "person.3.sequence.fill",variableValue: 0.3)
                    .symbolRenderingMode(.palette)

                    .resizable()
                    .scaledToFit()

            }
            
            
            Text("Dynamic Symbols (Tap On Symbol Hold For Reset)")
            Image(systemName: "person.3.sequence.fill",variableValue: variableValue)
                .symbolRenderingMode(.palette)
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    variableValue += 0.2
                }
                .onLongPressGesture {
                    variableValue = 0
                }
            
            
            Text("Palette Mode with Variable")
            HStack{
                Image(systemName: "speaker.wave.3.fill",variableValue: paletteVariableValue)
                    .symbolRenderingMode(.palette)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color.black, Color.yellow)
                    .onTapGesture {
                        paletteVariableValue += 0.2
                    }
                
                    .onLongPressGesture {
                        paletteVariableValue = 0
                    }
                
                
                
                Image(systemName: "speaker.wave.3.fill",variableValue: 0.66)
                    .symbolRenderingMode(.palette)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color.black, Color.red)

                Image(systemName: "speaker.wave.3.fill",variableValue: 0.3)
                    .symbolRenderingMode(.palette)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color.black, Color.green)


            }
            
            
            Text("Hierarchical Mode")
            Image(systemName: "calendar.badge.plus")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .foregroundStyle(.blue)
            
            
            
            Text("Multi Color")
            Image(systemName: "person.crop.circle.fill.badge.plus")
                .symbolRenderingMode(.multicolor)
                .resizable()
                .scaledToFit()
                .frame(width: 100)

        }.padding()
        
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsView()
    }
}
