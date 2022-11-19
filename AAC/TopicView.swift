//
//  TopicView.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/18/22.
//

import SwiftUI

struct TopicView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(header: Text(section.name)){
                        ForEach(section.items){ item in
                            Text(item.name)
                        }
                        
                    }
                }
            }
            
        .navigationTitle("Topic")
        .listStyle(GroupedListStyle())
        }
        .navigationViewStyle(.stack)
  
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView()
    }
}
