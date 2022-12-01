//
//  TopicView.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/18/22.
//

import SwiftUI

struct TopicView: View {
    let menu = Bundle.main.decode([LocationSection].self, from: "topic.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(header:
                        Text(section.name)
                        .font(.system(size: 50))){
                        ForEach(section.items){ item in
                            NavigationLink(destination:Text(item.name)){
                                ItemRow(item : item)
                            }
                        }
                    }
                }
            }
            
        .navigationTitle("Where are you now?")
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
