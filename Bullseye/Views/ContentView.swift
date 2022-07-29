//
//  ContentView.swift
//  Bullseye
//
//  Created by Anirudh on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello, SwiftUI!")
                alertIsVisible = true
            }) {
                Text("Hit me")
            }.alert("Hello there!", isPresented: $alertIsVisible, actions: {
                Button("Awesome") {}
            }, message: {
                let roundedValue = Int(sliderValue.rounded())
                Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points in this round.")
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
