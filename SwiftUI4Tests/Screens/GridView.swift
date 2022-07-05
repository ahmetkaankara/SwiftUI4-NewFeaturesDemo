//
//  GridView.swift
//  SwiftUI4Tests
//
//  Created by Ahmet Kaan Kara on 5.07.2022.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid{
            GridRow {
                Rectangle().fill(.red)
                    .gridCellColumns(3)
            }
            GridRow {
                Rectangle().fill(.blue)
                Rectangle().fill(.blue)
                Rectangle().fill(.blue)

            }
            GridRow {
                Rectangle().fill(.blue)
                Rectangle().fill(.blue)
                    .gridCellColumns(2)

            }
            GridRow {
                Rectangle().fill(.blue)
                Rectangle().fill(.blue)
                    .gridCellColumns(1)

            }
        }
        .font(.title)
        
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
