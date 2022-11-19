//
//  ImagesView.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/16/22.
//

import SwiftUI
import AVFoundation

let columns = [
    GridItem( .adaptive(minimum: 150))
]


struct ImagesView: View {
    var cards: [Card]
    @State var imageText: String = "";
    @State var savedImageText: String = "";

    var body: some View {
        VStack(spacing: 50){
            Text(savedImageText)
                .padding()
                .font(.system(size: 36))
            LazyVGrid(columns: columns, alignment: .leading){
                ForEach(cards){ card in
                    Button{
                        let utterance = AVSpeechUtterance(string: "\(card.name)")
                        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                        utterance.rate = 0.5
                        synthesizer.speak(utterance)
                        imageText = card.name
                        savedImageText += imageText + " "
                        
                    } label: {
                        Image(card.name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.horizontal)
                        
                    }
                }
            }
        }

    }
}
