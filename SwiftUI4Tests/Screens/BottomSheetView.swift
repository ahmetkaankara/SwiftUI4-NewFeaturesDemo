//
//  BottomSheetView.swift
//  SwiftUI4Tests
//
//  Created by Ahmet Kaan Kara on 5.07.2022.
//

import SwiftUI

struct BottomSheetView: View {
    
    @State private var showBottomSheet = false
    
    var body: some View {
        Button("Show Bottom Sheet"){
            showBottomSheet.toggle()
        }
        .sheet(isPresented: $showBottomSheet) {
            Text("Bottom Sheet")
            
                .presentationDetents([.medium,.large])
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
