//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Shira Stein on 4/15/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border (Color.gray, width:1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
                name = ""
        
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
       
    }
}

#Preview {
    ContentView()
}
