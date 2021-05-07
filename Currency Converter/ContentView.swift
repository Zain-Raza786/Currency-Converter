//
//  ContentView.swift
//  Currency Converter
//
//  Created by Student on 4/8/21.
//

import SwiftUI

struct ContentView : View {
    @State var amount: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Currency Converter")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.yellow)
                Spacer()
                TextField("Amount in USD", text: $amount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .foregroundColor(.blue)
                Spacer()
                NavigationLink(destination: SecondView()) {
                    Text("Convert")
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                        .font(.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Yawar Wrote this again

