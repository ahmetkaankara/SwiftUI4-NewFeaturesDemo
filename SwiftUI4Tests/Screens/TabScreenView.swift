//
//  ContentView.swift
//  SwiftUI4Tests
//
//  Created by Ahmet Kaan Kara on 5.07.2022.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView{
            GridView()
                .tabItem {
                    Text("Grid")
                        .font(.title)
                        .padding()

                }
            
            SymbolsView()
                .tabItem{
                    Text("Symbols")
                        .font(.title)
                        .padding()
                        
                }
            GaugeView()
                .tabItem{
                    Text("Gauge")
                        .font(.title)
                        .padding()
                }
            BottomSheetView()
                .tabItem{
                    Text("Bottom Sheet")
                        .font(.title)
                        .padding()
                }
            
        }
    }
    
}


struct TabScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
