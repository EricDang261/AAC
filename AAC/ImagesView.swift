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

struct FruitView: View {
    var cards: [FruitCard]
    @State var imageText: String = "";
    @State var savedImageText: String = "";

    var body: some View {
        VStack(spacing: 50){
            Text(savedImageText)
                .padding()
                .font(.system(size: 36))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 50){
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
                            .frame(width: 130, height: 130)
                            .padding(.horizontal)
                        
                    }
                }
            }
        }

    }
}

struct NumberView: View {
    var cards: [NumberCard]
    @State var imageText: String = "";
    @State var savedImageText: String = "";
    
    var body: some View {
        VStack(spacing: 50){
            Text(savedImageText)
                .padding()
                .font(.system(size: 36))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 50){
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
                            .frame(width: 130, height: 130)
                            .padding(.horizontal)
                        
                    }
                }
            }
        }
        
    }
}

struct EmotionView: View {
    var cards: [EmotionCard]
    @State var imageText: String = "";
    @State var savedImageText: String = "";
    
    var body: some View {
        VStack(spacing: 50){
            Text(savedImageText)
                .padding()
                .font(.system(size: 36))
            LazyVGrid(columns: columns, alignment: .leading, spacing: 50){
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
                            .frame(width: 130, height: 130)
                            .padding(.horizontal)
                        
                    }
                }
            }
        }
        
    }
}



struct NumberViews_Previews: PreviewProvider {
    static var previews: some View {
//        NumberView(cards: NumberData)
//        EmotionView(cards: EmotionData)
        FruitView(cards : FruitData )
    }
}
