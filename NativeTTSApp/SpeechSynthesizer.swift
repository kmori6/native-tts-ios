//
//  SpeechSynthesizer.swift
//  NativeTTSApp
//
//  Created by Kosuke Mori on 2026/03/17.
//

import Foundation
import Combine
import AVFAudio

final class SpeechSynthesizer: ObservableObject {
    private let synthesizer = AVSpeechSynthesizer()
    
    func synthesize(text: String, rate: Float) {
        // https://developer.apple.com/documentation/avfoundation/speech-synthesis
        let utt = AVSpeechUtterance(string: text)
        utt.rate = rate
        
        let voice = AVSpeechSynthesisVoice(language: "ja-JP")
        utt.voice = voice
        synthesizer.speak(utt)
    }
}
