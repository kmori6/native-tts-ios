//
//  ContentView.swift
//  NativeTTSApp
//
//  Created by Kosuke Mori on 2026/03/17.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    @State var sliderValue: Float = 0.5
    @StateObject private var synthesizer = SpeechSynthesizer()
    
    var body: some View {
        VStack {
            TextField("Input text", text: $inputText)
            
            Text("rate")
            Slider(value: $sliderValue, in: 0...1)
            Button("synthesize") {
                synthesizer.synthesize(text: inputText, rate: sliderValue)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
