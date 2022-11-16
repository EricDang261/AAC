//
//  TypeInputView.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/16/22.
//

import SwiftUI
import AVFoundation


struct TypeInputView: View {
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    var body: some View {
        Text(savedText)
        Button(action:{
            savedText = textEditorText
            let utterance = AVSpeechUtterance(string: "\(textEditorText)")
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            utterance.rate = 0.3
            synthesizer.speak(utterance)
        }, label:{
            TextEditor(text: $textEditorText)
                .multilineTextAlignment(.leading)
                .padding()
                .frame(height: 70)
                .foregroundColor(.red)
                .colorMultiply(Color(hue: 0.622, saturation: 0.106, brightness: 0.928))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.black, lineWidth: 4))
                .padding(.leading, 10)
                .padding(.trailing, 10)
        })
    }
}


