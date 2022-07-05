//
//  NewViews.swift
//  SwiftUI4Tests
//
//  Created by Ahmet Kaan Kara on 5.07.2022.
//

import SwiftUI

struct GaugeView: View {
    
    @State private var current = 90.0
    @State private var minValue = 50.0
    @State private var maxValue = 170.0
    
    var body: some View {
        
        VStack{
            Text("Default Gauge")
                .font(.headline)
                .padding(.top,100)
            Gauge(value: 0.8) {
                
            }
            
            
            Text("Accessory Linear  Gauge")
                .font(.headline)
                .padding(.top,100)
            Gauge(value: 0.66) {
                
            }
            .gaugeStyle(.accessoryLinear)
            

            Text("Accessory Linear Capacity Gauge")
                .font(.headline)
                .padding(.top,100)
            Gauge(value: 0.4) {
                
            }
            .gaugeStyle(.accessoryLinearCapacity)
            
            
            
            Text("Circular Gauge")
                .font(.headline)
                .padding(.top,100)
            Gauge(value: current, in: minValue...maxValue) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            } currentValueLabel: {
                Text("\(Int(current))")
                    .foregroundColor(Color.green)
            } minimumValueLabel: {
                Text("\(Int(minValue))")
                    .foregroundColor(Color.green)
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
                    .foregroundColor(Color.red)
            }
            .gaugeStyle(.accessoryCircular)
        }.padding()
    }
}

struct NewViews_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView()
    }
}
