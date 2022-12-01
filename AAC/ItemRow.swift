//
//  ItemRow.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/18/22.
//

import SwiftUI

struct ItemRow: View {
    let item: LocationItem
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
                .resizable()
                .scaledToFit()
                .frame(width:100, height: 100)
                .padding()
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.gray, lineWidth:2 ))
            Text(item.name)
                .font(.system(size:50))
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item : LocationItem.example)
    }
}
