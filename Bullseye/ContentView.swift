//
//  ContentView.swift
//  Bullseye
//
//  Created by Anirudh on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var knockKnockAlertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1...100)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }.alert("Hello there!", isPresented: $alertIsVisible, actions: {
                Button("Awesome") {}
            }, message: {
                Text("This is my first pop-up")
            })
            // TODO: Challenge to add Knock-knock joke
            Button(action: {
                self.knockKnockAlertIsVisible = true
            }) {
                Text("Knock Knock")
            }.alert("Who's there?", isPresented: $knockKnockAlertIsVisible, actions: {
                Button("Little old lady who?") {}
            }, message: {
                Text("Little old lady.")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
