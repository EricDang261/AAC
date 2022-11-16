//
//  ContentView.swift
//  grid
//
//  Created by Đặng Thịnh on 10/28/22.
//

import SwiftUI
import AVFoundation

let synthesizer = AVSpeechSynthesizer() ; // instance for tts

struct ContentView: View {
    var cards: [Card]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    TypeInputView()
                    Spacer()
                    ImagesView(cards:cards)
                    
                }
        
                   
            }
            .navigationTitle("AAC")
        }
        .navigationViewStyle(.stack)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: testData)
    }
}


